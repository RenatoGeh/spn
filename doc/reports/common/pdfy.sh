rm *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml
pdflatex report.tex
pdflatex report.tex
biber report
pdflatex report.tex
