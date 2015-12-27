# Criado por Rafael Lopes em 20 de outubro de 2009
SHELL = /bin/sh

TEX = $(shell egrep -l '^[^%]*\\begin\{document\}' *tex)
PDF	= $(TEX:%.tex=%.pdf)

pdf: cleanall $(PDF)


poster.pdf:poster.tex beamerposter.sty beamerthemeazul.sty



.tex.dvi:
	latex $*
	if test -f references.bib; then bibtex $*; latex $*; latex $*; fi
	rm -f $*.log $*.aux $*.blg

.tex.pdf:
	pdflatex $*
	if test -f references.bib; then bibtex $*; pdflatex $*; pdflatex $*; fi
	#rm -f $*.log $*.aux $*.blg

.tex.ps:
	pslatex $*
	if test -f references.bib; then bibtex $*; pslatex $*; pslatex $*; fi
	rm -f $*.log $*.aux $*.blg

.tex.html:
	latex2html $*.tex
	rm -f $*.log $*.aux $*.bbl $*.blg



package:cleanall
	tar --exclude='*.svn*' -czvf poster.tar.gz .



clean:
	-@rm -f *.dvi *.aux *.log *.dvi *.ps *.bbl *.blg *.out *.snm  *.toc *.nav *.dep $(PDF)



.SUFFIXES: .dvi .tex .pdf .ps .html .o .c
.PHONY:clean cleanall
