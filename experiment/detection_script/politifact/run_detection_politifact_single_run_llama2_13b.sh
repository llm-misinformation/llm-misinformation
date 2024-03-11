
python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_paraphrase_generation_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_llama2_13b_politifact_paraphrase_generation_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_llama2_13b_politifact_paraphrase_generation_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_llama2_13b_politifact_paraphrase_generation_test1.pkl"\
                                        --model_size "13b"\
                                        --model_path "path_to_Llama-2-13b-chat-hf"\
                                        --llm_model "llama2"                                        


################################################################################################################


python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_rewrite_generation_test1.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_llama2_13b_politifact_rewrite_generation_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_llama2_13b_politifact_rewrite_generation_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_llama2_13b_politifact_rewrite_generation_test1.pkl"\
                                        --model_size "13b"\
                                        --model_path "path_to_Llama-2-13b-chat-hf"\
                                        --llm_model "llama2"                                        


################################################################################################################


python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_open_ended_generation_test1.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_llama2_13b_politifact_open_ended_generation_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_llama2_13b_politifact_open_ended_generation_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_llama2_13b_politifact_open_ended_generation_test1.pkl"\
                                        --model_size "13b"\
                                        --model_path "path_to_Llama-2-13b-chat-hf"\
                                        --llm_model "llama2"                                        

