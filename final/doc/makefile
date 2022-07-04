all:
	xelatex julia.tex > 1.log
	bibtex julia.aux > 1.log
	xelatex julia.tex > 1.log
	xelatex julia.tex > 1.log
	rm 1.log
	mv julia.pdf report.pdf
	mv report.pdf ../
