make_dir:=$(shell pwd)

report:
	echo "report生成中，请稍等..."
	make -C doc/
	find . -regextype posix-extended -regex ".*\.(aux|blg|log|bbl|out)" -type f -exec rm -f {} \;
	@echo "report.pdf已成功生成于$(make_dir)"
