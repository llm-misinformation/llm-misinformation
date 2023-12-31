# Can LLM-Generated Misinformation Be Detected?

>The repository (dataset and code) for the preprint paper **[Can LLM-Generated Misinformation Be Detected?](https://arxiv.org/abs/2309.13788)** <br>[Canyu Chen](https://canyuchen.com), [Kai Shu](http://www.cs.iit.edu/~kshu/)<br>[[arXiv]](https://arxiv.org/abs/2309.13788) [[project homepage]](https://llm-misinformation.github.io/)
>
> More resources on "**LLMs Meet Misinformation**" are also on the website: https://llm-misinformation.github.io/
>
>Any suggestion, comment or further discussion is welcome. Please let us know by email (cchen151@hawk.iit.edu) or wechat (alexccychen).

## Abstract
<img src="./image/f1.png" width="500">  

The advent of Large Language Models (LLMs) has made a transformative impact. However, the potential that LLMs such as ChatGPT can be exploited to generate misinformation has posed a serious concern to online safety and public trust. A fundamental research question is: ***will LLM-generated misinformation cause more harm than human-written misinformation?*** We propose to tackle this question from the perspective of ***detection difficulty***. We first build a taxonomy of LLM-generated misinformation. Then we categorize and validate the potential real-world methods for generating misinformation with LLMs. Then, through extensive empirical investigation, we discover that LLM-generated misinformation can be **harder** to detect for **humans** and **detectors** compared to human-written misinformation with the same semantics, which suggests it can have **more deceptive styles** and potentially cause **more harm**. We also discuss the implications of our discovery on combating misinformation in the age of LLMs and the countermeasures.

## Dataset

The **human-written misinformation** and **ChatGPT-generated misinformation** (using `gpt-3.5-turbo` for misinformation generation) datasets are stored in `experiment/data/coaid`, `experiment/data/gossipcop`, and `experiment/data/politifact`.

For example, the **human-written misinformation** for `politifact` is the `news_text` column in `experiment/data/politifact/synthetic-gpt-3.5-turbo_politifact_paraphrase_generation_processed.csv`. 

The **ChatGPT-generated misinformation** for `politifact` via the `Paraphrase Generation` approach is the `synthetic_misinformation` column in `experiment/data/politifact/synthetic-gpt-3.5-turbo_politifact_paraphrase_generation_processed.csv`.

## Experiment Results

The prediction results of the detection process are recorded in `*.log` files in `experiment/result_run1 (or result_run2, result_run3)/coaid`, `experiment/result_run1  (or result_run2, result_run3)/gossipcop`, and `experiment/result_run1  (or result_run2, result_run3)/politifact`. Average performance over three runs are reported in the paper for ChatGPT-3.5 or GPT-4 as the detector due to the variance of the API output.

The outputs of LLM detectors are recorded in `*.log` files in `experiment/detection_script/politifact`, `experiment/detection_script/gossipcop_sampling`, and `experiment/detection_script/coaid_sampling`

## Reproduction
First, download our repo:
```bash
git clone https://github.com/llm-misinformation/llm-misinformation.git
cd llm-misinformation
```

Evironment setup (Note that we run the experiments on one NVIDIA RTX A6000. CUDA Version = 11.7. We adopt vllm==0.1.4 for the inference of Llama2):

```bash
conda create -n llm-misinformation python=3.8.17
pip install -r requirements.txt
```

As for ChatGPT-3.5 (`gpt-3.5-turbo`) or GPT4 (`gpt-4`), we adopt the default API setting of OpenAI. As for Llama2 (`Llama2-7B-chat` and `Llama2-13B-chat`), we adopt the hyperparameters for the sampling strategy as follows: `top_p = 0.9`, `temperature = 0.8`, `max_tokens = 2,000`.

To run the detection code, you need to replace the `args.OPENAI_API_KEY` in the `experiment/detection_script/llm_generated_misinformation_detector.py` to your own `OPENAI_API_KEY`. Then you can run the `*.sh` scripts in `experiment/detection_script/politifact`, `experiment/detection_script/gossipcop_sampling`, and `experiment/detection_script/coaid_sampling` to reproduce the results.

For example, adopting `Llama2-7B-chat` with the `Zero-shot Chain-of-Thought` prompting strategy as the detector for detecting ChatGPT-generated misinformation:
```bash
cd experiment/detection_script/politifact
bash run_detection_politifact_cot_single_run_llama2_7b.sh
```

## Ethics Statement

We aim to facilitate the research on combating LLM-generated misinformation by open-sourcing the **human-written misinformation** and **ChatGPT-generated misinformation** datasets and detection code. We do not release the generation code to avoid the potential misuse. 

## Citation
If you find our dataset or code useful, we will greatly appreacite it if you could consider citing our paper:
```
@article{chen2023llmgenerated,
  title   = {Can LLM-Generated Misinformation Be Detected?},
  author  = {Canyu Chen and Kai Shu},
  year    = {2023},
  journal = {arXiv preprint arXiv: 2309.13788}
}
```