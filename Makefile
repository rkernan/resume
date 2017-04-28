PROJECT=resume
TARGETS=$(PROJECT).pdf

.PHONY: all clean cleanall

all: $(TARGETS)

$(PROJECT).pdf: $(PROJECT).tex
	latexmk -dvi- -pdf -pdflatex="pdflatex -interactive=nonstopmode" $<

cleanall:
	latexmk -C

clean:
	latexmk -c
