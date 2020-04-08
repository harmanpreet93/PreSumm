BERT_DATA_PATH="../abs_input_data/cnndm"
MODEL_PATH="../abs_model"
TRAIN_FROM="../abs_model/model_step_18000.pt"
LOG_PATH="../abs_output_logs/log_abs_bert_cnndm"
EXT_CKPT="../models/author_ext_model/bertext_cnndm_transformer.pt"

python train.py  \
	-task abs \
	-mode train \
	-train_from $TRAIN_FROM \
	-bert_data_path $BERT_DATA_PATH \
	-dec_dropout 0.2 \
	-model_path $MODEL_PATH \
	-sep_optim true \
	-lr_bert 0.0002 \
	-lr_dec 0.1 \
	-save_checkpoint_steps 2000 \
	-batch_size 140 \
	-train_steps 20000 \
	-report_every 50 \
	-accum_count 5 \
	-use_bert_emb true \
	-use_interval true \
	-warmup_steps_bert 10000 \
	-warmup_steps_dec 5000 \
	-max_pos 512 \
	-visible_gpus 0,1 \
	-log_file $LOG_PATH \
	-load_from_extractive $EXT_CKPT
