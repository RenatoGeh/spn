all:
	make clean; \
	pdflatex project.tex; pdflatex project.tex; biber project; pdflatex project.tex && \
 	okular project.pdf

.PHONY: clean
clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc

