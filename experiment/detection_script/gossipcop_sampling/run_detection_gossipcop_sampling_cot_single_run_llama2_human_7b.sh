

################################################################################################################

python ../llm_generated_misinformation_detector.py --setting "human" \
                                        --data_path "../../data/chatgpt_3.5_generation/gossipcop/synthetic-gpt-3.5-turbo_gossipcop_paraphrase_generation_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/gossipcop/result_cot_llama2_7b_human_gossipcop_paraphrase_generation_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/gossipcop/result_cot_llama2_7b_human_gossipcop_paraphrase_generation_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/gossipcop/result_cot_llama2_7b_human_gossipcop_paraphrase_generation_test1.pkl"\
                                        --model_size "7b"\
                                        --model_path "path_to_Llama-2-7b-chat-hf"\
                                        --llm_model "llama2"\
                                        --prompting_strategy "CoT"                                        
                                      

