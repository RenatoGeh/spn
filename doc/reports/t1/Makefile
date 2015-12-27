all:
	make clean; \
	pdflatex report.tex; pdflatex report.tex; biber report; pdflatex report.tex && \
 	evince report.pdf

.PHONY: clean
clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc

