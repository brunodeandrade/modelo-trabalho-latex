
MAIN_FILE = abntex2-modelo-relatorio-tecnico
BIB_FILE = abntex2-modelo-references


all:
	pdflatex $(MAIN_FILE)
	bibtex $(BIB_FILE)
	pdflatex $(MAIN_FILE)
	pdflatex $(MAIN_FILE)
	# dvipdf $(BIB_FILE).dvi


clean:
	rm -f *~ *.dvi *.ps *.backup *.aux *.log
	rm -f *.lof *.lot *.bbl *.blg *.brf *.toc *.idx
	rm -f *.pdf