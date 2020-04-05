python ../src/preprocess.py -mode tokenize -raw_path ../sample_data/stories -save_path ../sample_data/tokenized

python ../src/preprocess.py -mode format_to_lines -raw_path ../sample_data/tokenized -save_path ../sample_data/json/cnndm -n_cpus 1 -use_bert_basic_tokenizer false -map_path ../urls

python ../src/preprocess.py -mode format_to_bert -raw_path ../sample_data/json -save_path ../sample_data/bert_data  -lower -n_cpus 1 -log_file ../logs/preprocess.log
