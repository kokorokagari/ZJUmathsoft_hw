report:
	xelatex julia.tex > ../log/1.log
	bibtex julia.aux > ../log/1.log
	xelatex julia.tex > ../log/1.log
	xelatex julia.tex > ../log/1.log
	@rm ../log/1.log
	@mv julia.pdf report.pdf
	@mv report.pdf ../
	
slide:
	xelatex slide.tex > ../log/1.log
	@rm ../log/1.log
	@mv slide.pdf ../
