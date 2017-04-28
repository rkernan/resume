.PHONY: all clean

all: resume.tex
	latexmk -dvi- -pdf

clean:
	latexmk -c
