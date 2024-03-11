

################################################################################################################

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_False_Context_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_False_Context_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_False_Context_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_False_Context_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_test1.pkl"\
                                        --synthesis_approach "information_manipulation"



python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_hallucination_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_hallucination_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_hallucination_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_hallucination_test1.pkl"


python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_totally_arbitrary_generation_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_totally_arbitrary_generation_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_totally_arbitrary_generation_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_totally_arbitrary_generation_test1.pkl"




python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_test1.pkl"

python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_processed.pkl" \
                                        --log_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_test1.log" \
                                        --result_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_test1.csv" \
                                        --save_path "../../result_run1/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_test1.pkl"





################################################################################################################

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_False_Context_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_False_Context_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_False_Context_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_False_Context_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_test1.pkl"\
                                        --synthesis_approach "information_manipulation"



python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_hallucination_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_hallucination_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_hallucination_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_hallucination_test1.pkl"


python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_totally_arbitrary_generation_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_totally_arbitrary_generation_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_totally_arbitrary_generation_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_totally_arbitrary_generation_test1.pkl"




python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_test1.pkl"

python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_processed.pkl" \
                                        --log_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_test1.log" \
                                        --result_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_test1.csv" \
                                        --save_path "../../result_run2/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_test1.pkl"










################################################################################################################

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Description_Ambiguity_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_False_Context_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_False_Context_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_False_Context_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_False_Context_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Incomplete_Fact_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Outdated_Information_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Total_Fabrication_test1.pkl"\
                                        --synthesis_approach "information_manipulation"

python ../llm_generated_misinformation_detector.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_information_manipulation_Unsubstantiated_Content_test1.pkl"\
                                        --synthesis_approach "information_manipulation"



python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_hallucination_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_hallucination_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_hallucination_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_hallucination_test1.pkl"


python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_totally_arbitrary_generation_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_totally_arbitrary_generation_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_totally_arbitrary_generation_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_totally_arbitrary_generation_test1.pkl"




python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_healthcare_fake_news_test1.pkl"

python ../politifact_synthetic_detector_9_14.py --setting "chatgpt" \
                                        --data_path "../../data/chatgpt_3.5_generation/politifact/synthetic-gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_processed.pkl" \
                                        --log_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_test1.log" \
                                        --result_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_test1.csv" \
                                        --save_path "../../result_run3/chatgpt_3.5_generation/politifact/result_gpt-3.5-turbo_politifact_partially_arbitrary_generation_politics_rumors_test1.pkl"













