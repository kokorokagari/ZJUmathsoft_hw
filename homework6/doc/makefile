all:
	@xelatex qeou.tex > 1.log
	@bibtex qeou.aux > 1.log
	@xelatex qeou.tex > 1.log
	@xelatex qeou.tex > 1.log
	@rm 1.log
	@mv qeou.pdf ../
