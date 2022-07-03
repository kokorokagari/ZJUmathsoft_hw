make_dir:=$(shell pwd)

report:
	@gnuplot qeou.gp
	@xelatex qeou.tex > 1.log
	@bibtex qeou.aux > 1.log
	@xelatex qeou.tex > 1.log
	@xelatex qeou.tex > 1.log
	@rm 1.log
	@find . -regextype posix-extended -regex ".*\.(aux|blg|log|bbl|out|png)" -type f -exec rm -f {} \;
	@mv qeou.pdf report.pdf
	@echo "report.pdf已成功生成于$(make_dir)"
	
clean:
	@rm report.pdf
