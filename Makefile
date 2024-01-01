.PHONY: resume.pdf

CC = xelatex
OUTPUT_DIR = .
RESUME_DIR = resume
# CV_DIR = examples/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
# CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

# examples: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(OUTPUT_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

# cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

# coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
# 	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(RESUME_DIR)/*.pdf
