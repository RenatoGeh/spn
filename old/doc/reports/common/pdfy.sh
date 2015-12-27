rm *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml
pdflatex relatorio.tex
pdflatex relatorio.tex
biber relatorio
pdflatex relatorio.tex
