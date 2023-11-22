import pickle
import pandas as pd
import spacy
import os
import openai
import time
import csv
import argparse
from sklearn.metrics import *
from vllm import LLM, SamplingParams
import torch
import numpy as np
import random

nlp = spacy.load("en_core_web_sm")

parser = argparse.ArgumentParser()
parser.add_argument("--random_seed", default=5, type=int)
parser.add_argument("--data_path", type=str)
parser.add_argument("--log_path", type=str)
parser.add_argument("--result_path", type=str)
parser.add_argument("--save_path", type=str)
parser.add_argument("--model_path", type=str)
parser.add_argument("--model_size", type=str)
parser.add_argument("--OPENAI_API_KEY", type=str)
parser.add_argument("--setting", type=str, choices=['human','chatgpt'])
parser.add_argument("--prompting_strategy", type=str, default='NoCoT', choices=['CoT','NoCoT'])
parser.add_argument("--llm_model", type=str, default='chatgpt', choices=['chatgpt','llama2', 'gpt4'])
parser.add_argument("--synthesis_approach", default="paraphrase_generation", type=str,choices=['paraphrase_generation',\
                                                                                               'rewrite_generation',\
                                                                                               'open_ended_generation',\
                                                                                               'information_manipulation',\
                                                                                               'totally_arbitrary_generation',\
                                                                                               'partially_arbitrary_generation',\
                                                                                               'hallucinated_news_generation'])
args = parser.parse_args()

my_random_state = args.random_seed

random.seed(my_random_state)
np.random.seed(my_random_state)
torch.manual_seed(my_random_state)
torch.cuda.manual_seed_all(my_random_state)

openai.api_key = args.OPENAI_API_KEY

train_data_df = pickle.load(open(args.data_path, "rb"))

if args.synthesis_approach == "information_manipulation":
    train_data_df = train_data_df[train_data_df['label'] == 0]
else:
    train_data_df = train_data_df[train_data_df['label'] == 1]

if args.setting == "human":
    train_data = train_data_df.iloc[:, 1].values
    train_label = train_data_df.iloc[:, 2].values

elif args.setting == "chatgpt":
    train_data = train_data_df.iloc[:, -1].values
    train_label = train_data_df.iloc[:, 2].values

train_prediction = [0] * len(train_data)
index = 0
num_index_error = 0

pd_input = train_data_df[['news_id', 'label', 'news_text', 'synthetic_misinformation']]
pd_input.loc[:,'prediction'] = 0
pd_input = pd_input.reindex(columns=['news_id', 'label', 'prediction', 'news_text', 'synthetic_misinformation'])



if args.prompting_strategy == "NoCoT":
    detection_prompt = "Given a 'passage', determine whether or not it is a piece of misinformation. Only output 'YES' or 'NO'. The 'passage' is: "

elif args.prompting_strategy == "CoT":
    detection_prompt = "Given a 'passage', please think step by step and then determine whether or not it is a piece of misinformation. You need to output your thinking process and answer 'YES' or 'NO'. The 'passage' is: "

if args.llm_model == "llama2":
    sampling_params = SamplingParams(top_p=0.9, temperature=0.8, max_tokens=2000)
    if args.model_size == "7b" or args.model_size == "13b":
        llm = LLM(model=args.model_path)
    elif args.model_size == "70b":
        llm = LLM(model=args.model_path, tensor_parallel_size=4)


def detect_misinformation():

    try:
        prompt = detection_prompt

        global index
        index_ = index

        for i in range(index_, len(train_data)):

            j = 0
            while(True):
                j = j+ 1
                if j > 3:
                    break

                passage = train_data[i]

                if args.llm_model == "chatgpt":
                    completion = openai.ChatCompletion.create(
                        model="gpt-3.5-turbo", 
                        messages=[{"role": "user", "content": prompt + passage}]
                    )

                    gpt_output = completion["choices"][0]["message"]["content"].strip()
                elif args.llm_model == "gpt4":
                    completion = openai.ChatCompletion.create(
                        model="gpt-4", 
                        messages=[{"role": "user", "content": prompt + passage}]
                    )

                    gpt_output = completion["choices"][0]["message"]["content"].strip()                    
                elif args.llm_model == "llama2":
                    output = llm.generate(prompt + passage, sampling_params)
                    gpt_output = output[0].outputs[0].text.strip()

                if args.prompting_strategy == "NoCoT":
                    if 'NO' in gpt_output:
                        response_prediction = 0
                        print("i = ", i, "j = ", j, "gpt_output:", gpt_output)
                        break
                    elif 'YES' in gpt_output:
                        response_prediction = 1
                        print("i = ", i, "j = ", j, "gpt_output:", gpt_output)
                        break
                    else:
                        response_prediction = 0
                        print("i = ", i, "j = ", j, "gpt_output:", gpt_output)
                elif args.prompting_strategy == "CoT":
                    if 'NO' in gpt_output:
                        response_prediction = 0
                        print("i = ", i, "j = ", j, "gpt_output:", gpt_output)
                        break
                    elif 'YES' in gpt_output:
                        response_prediction = 1
                        print("i = ", i, "j = ", j, "gpt_output:", gpt_output)
                        break
                    else:
                        response_prediction = 0
                        print("i = ", i, "j = ", j, "gpt_output:", gpt_output)                
                    pass

            train_prediction[i] = response_prediction

            index = index + 1

            if i % 10 == 0:
                pd_input.loc[:,'prediction'] = train_prediction
                pd_input.to_csv(args.result_path, index=False)
                print("i = ", i)

        pd_input.loc[:,'prediction'] = train_prediction
        pd_input.to_csv(args.result_path, index=False)

        train_data_df['prediction'] = train_prediction
        train_data_df.to_pickle(args.save_path)

        num_prediction = sum(train_prediction)
        num_total = len(train_prediction)
        success_rate = num_prediction / num_total

        result_log = "------evaluation------\nsuccess rate:{p}, num_prediction:{n}, num_total:{t}".format(p=success_rate, n=num_prediction, t=num_total)

        with open(args.log_path, 'w') as log_file:
            log_file.write(result_log)

        print("finish")

    except openai.error.RateLimitError as e:
        retry_time = e.retry_after if hasattr(e, 'retry_after') else 30
        print(f"Rate limit exceeded. Retrying in {retry_time} seconds...")
        time.sleep(retry_time)
        return detect_misinformation()
    
    except openai.error.ServiceUnavailableError as e:
        retry_time = e.retry_after if hasattr(e, 'retry_after') else 30
        print(f"ServiceUnavailable Error occurred. Retrying in {retry_time} seconds...")
        time.sleep(retry_time)
        return detect_misinformation()

    except openai.error.APIError as e:
        retry_time = e.retry_after if hasattr(e, 'retry_after') else 30
        print(f"API error occurred. Retrying in {retry_time} seconds...")
        time.sleep(retry_time)
        return detect_misinformation()

    except openai.error.Timeout as e:
        retry_time = e.retry_after if hasattr(e, 'retry_after') else 30
        print(f"Timeout error occurred. Retrying in {retry_time} seconds...")
        time.sleep(retry_time)
        return detect_misinformation()
    
    except OSError as e:
        retry_time = 5
        print(f"Connection error occurred: {e}. Retrying in {retry_time} seconds...")      
        time.sleep(retry_time)
        return detect_misinformation()

    except openai.error.ServiceUnavailableError as e:
        retry_time = 5
        print(f"ServiceUnavailable error occurred: {e}. Retrying in {retry_time} seconds...")      
        time.sleep(retry_time)
        return detect_misinformation()

    except IndexError as e:
        retry_time = 5
        print(f"Connection error occurred: {e}. Retrying in {retry_time} seconds...")      
        time.sleep(retry_time)

        index = index + 1

        global num_index_error
        num_index_error = num_index_error + 1
        
        print("num_index_error:", num_index_error)
        return detect_misinformation()

if __name__ == "__main__":
    detect_misinformation()
