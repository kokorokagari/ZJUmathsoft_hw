make_dir:=$(shell pwd)

#bin和lib文件夹并没有什么用处...

all:
	@echo "使用说明："

report:
	@echo "report生成中，请稍等..."
	@make report -C doc/
	@find . -regextype posix-extended -regex ".*\.(aux|blg|log|bbl|out)" -type f -exec rm -f {} \;
	@echo "已删除过程文件"
	@echo "report.pdf已成功生成于$(make_dir)"
	
slide:
	@echo "slide生成中，请稍等..."
	@make slide -C doc/
	@find . -regextype posix-extended -regex ".*\.(aux|log|toc|out|snm|nav)" -type f -exec rm -f {} \;
	@echo "已删除过程文件"
	@echo "slide.pdf已成功生成于$(make_dir)"
	
clean:
	@rm report.pdf slide.pdf
	@echo "已删除report.pdf与slide.pdf"
	
