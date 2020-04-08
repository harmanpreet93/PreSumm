ABS_CKPT="../noext_abs_model/model_step_20000.pt"
BERT_DATA_PATH="../noext_abs_input_data/cnndm"
MODEL_PATH="../noext_abs_model"
LOG_PATH="../noext_abs_output_20000_logs/log_baseline_bert_cnndm"
RESULT_PATH="../noext_abs_output_20000_logs/result_baseline_bert_cnndm"

 python train.py \
	-task abs \
	-mode test \
	-test_from $ABS_CKPT \
	-batch_size 3000 \
	-test_batch_size 500 \
	-bert_data_path $BERT_DATA_PATH \
	-log_file $LOG_PATH \
	-model_path $MODEL_PATH \
	-sep_optim true \
	-use_interval true \
	-visible_gpus 0,1 \
	-max_pos 512 \
	-max_length 200 \
	-alpha 0.95 \
	-min_length 50 \
	-result_path $RESULT_PATH

