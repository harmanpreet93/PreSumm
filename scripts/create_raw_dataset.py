from os.path import join as pjoin

gold_summaries = "../ext_output_logs/test/result_ext_bert_cnndm_step0.gold"
candidate_summaries = "../ext_output_logs/test/result_ext_bert_cnndm_step0.candidate"
story_dir = "../abs_input_data/raw_data"

gold_fh = open(gold_summaries, "r")
gold_lines = gold_fh.readlines()

candidate_fh = open(candidate_summaries, "r")
candidate_lines = candidate_fh.readlines()

num_examples = len(gold_lines)
print("Generating {} examples and labels...".format(num_examples))

for i in range(num_examples):
	# Generate single story file per line
	sentences = candidate_lines[i].split("<q>")
	highlights = gold_lines[i].split("<q>")

	story_fh = open(pjoin(story_dir, "{}.story".format(i)), "w+")
	for sentence in sentences:
		story_fh.write(sentence.strip()+"\n\n")
	for highlight in highlights:
		story_fh.write("@highlight\n\n")
		story_fh.write(highlight.strip()+"\n\n")
	story_fh.close()

gold_fh.close()
candidate_fh.close()