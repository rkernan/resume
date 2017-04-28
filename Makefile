.PHONY: all clean

all:
	latexmk -dvi- -pdf

clean:
	latexmk -c
