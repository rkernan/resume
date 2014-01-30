PROJECT=resume

TEX_FILES=$(shell find . -name '*.tex')

.PHONY: all
all: build

.PHONY: build
build: $(PROJECT).pdf

.PHONY: $(PROJECT).pdf
$(PROJECT).pdf:
	pdflatex $(TEX_FILES)

.PHONY: clean
clean:
	rm *.aux *.log *.out
