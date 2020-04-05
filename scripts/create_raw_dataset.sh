python ../src/preprocess.py -mode tokenize -raw_path ../abs_input_data/raw_data -save_path ../abs_input_data/merged_stories_tokenized

python ../src/preprocess.py -mode format_to_lines -raw_path ../abs_input_data/merged_stories_tokenized -save_path ../abs_input_data/json_data/cnndm -n_cpus 1 -use_bert_basic_tokenizer false -map_path ../urls

python ../src/preprocess.py -mode format_to_bert -raw_path ../abs_input_data/json_data -save_path ../abs_input_data/bert_data  -lower -n_cpus 1 -log_file ../logs/preprocess.log
