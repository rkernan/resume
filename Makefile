PROJECT=resume
TARGETS=$(PROJECT).pdf

.PHONY: all clean clean-dist

all: $(TARGETS)

$(PROJECT).pdf: $(PROJECT).tex
	latexmk -dvi- -pdf -pdflatex="pdflatex -interactive=nonstopmode" $<

clean-dist:
	latexmk -C

clean:
	latexmk -c
