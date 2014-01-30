TEX_FILES=$(shell find . -name '*.tex')

.PHONY: all
all: build

.PHONY: display
display:
	evince *.pdf &

.PHONY: build
build: $(TEX_FILES)
	pdflatex $(TEX_FILES)

.PHONY: clean
clean:
	rm *.aux *.log *.out
