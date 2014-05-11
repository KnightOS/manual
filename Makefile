.DEFAULT_GOAL=pdf

Manual.dvi: Manual.tex
	@latex Manual.tex
	@latex Manual.tex

Manual.pdf: Manual.dvi
	@dvipdfm Manual.dvi

view: Manual.dvi
	@xdvi Manual.dvi

pdf: Manual.pdf

viewpdf: pdf
	@xdg-open Manual.pdf

clean:
	@rm -f *.dvi *.pdf *.log *.aux *.toc *.out

.PHONY: pdf view clean
