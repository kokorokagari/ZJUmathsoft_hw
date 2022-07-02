make_dir:=$(shell pwd)
IPATH=-I$(make_dir)/include
LPATH=-L$(make_dir)/lib

bin/roots:src/roots.c include/gsl/gsl_errno.h include/gsl/gsl_math.h include/gsl/gsl_roots.h include/demo_fn.h lib/libdemo_fn.so
	gcc -o roots src/roots.c $(IPATH) $(LPATH) -ldemo_fn -lgsl -lgslcblas
	@mv roots bin

lib/libdemo_fn.so:src/demo_fn.c include/demo_fn.h
	gcc -c -fPIC src/demo_fn.c $(IPATH)
	gcc -shared -o libdemo_fn.so demo_fn.o
	@mv libdemo_fn.so lib
	rm demo_fn.o

.PHONY:clean
clean:
	rm lib/libdemo_fn.so bin/roots report.pdf

report:
	xelatex doc/report.tex
	#bibtex doc/report.aux
	#xelatex doc/report.tex
	#xelatex doc/report.tex
	find . -regextype posix-extended -regex ".*\.(aux|blg|log|bbl|out)" -type f -exec rm -f {} \;

#all:

