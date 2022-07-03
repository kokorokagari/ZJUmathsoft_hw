make_dir:=$(shell pwd)

report:
	@echo "report生成中，请稍等..."
	@gnuplot gnuplot/qeou.gp
	@mv qeou.png doc/
	@make -C doc/ > 1.log
	@rm 1.log
	@find . -regextype posix-extended -regex ".*\.(aux|blg|log|bbl|out|png)" -type f -exec rm -f {} \;
	@mv qeou.pdf report.pdf
	@echo "report.pdf已成功生成于$(make_dir)"
	
clean:
	@rm report.pdf
