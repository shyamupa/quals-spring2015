.SUFFIXES: .tex .in .dvi .ps .pdf
all: quals.pdf 
.tex.pdf: 
	pdflatex $<
	-bibtex $*
	pdflatex $<
	pdflatex $<
clean:
	rm -f  *.aux *.dvi *.ps *.bbl *.blg *.out *.log *.toc *.nav *.snm *.bak *~ *.pdf

