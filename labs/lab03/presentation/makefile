PDF_ENGINE ?= xelatex
PDF_OPTS   = --pdf-engine=$(PDF_ENGINE) -V mainfont="DejaVu Serif" -V geometry:margin=2.5cm
FILTER     = --filter pandoc-crossref

SRC_MD     = $(wildcard *.md)
OUT_PDF    = $(SRC_MD:.md=.pdf)
OUT_DOCX   = $(SRC_MD:.md=.docx)

all: $(OUT_PDF) $(OUT_DOCX)

%.pdf: %.md
	pandoc $< -o $@ $(FILTER) $(PDF_OPTS)

%.docx: %.md
	pandoc $< -o $@ $(FILTER)

clean:
	rm -f $(OUT_PDF) $(OUT_DOCX) *~
