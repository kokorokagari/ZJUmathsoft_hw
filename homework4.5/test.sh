#!/bin/sh
#为了使图片生成地更快，调整了Python代码的图片参数使得文件大小不至于过大，代价是损失了一定的精细度。
#需要用到ipython3以及numpy库、matplotlib库。
rm -rf png
#find ./ -regextype posix-extended -regex ".*\.(aux|blg|log|bbl|out|pdf)" -type f -exec rm -f {} \;
mkdir png
cd src/py/
ipython3 man_normal.py << A
10
A
ipython3 man_normal.py << A
20
A
ipython3 man_normal.py << A
50
A
ipython3 man_normal.py << A
100
A
ipython3 man_complex.py << A
10
A
ipython3 man_complex.py << A
20
A
ipython3 man_complex.py << A
50
A
ipython3 man_complex.py << A
50
A
ipython3 man_complex.py << A
50
A
ipython3 man_complex.py << A
100
A
ipython3 man_amazing.py << A
100
A
ipython3 man_color.py << A
100
A
ipython3 man_colorln.py << A
100
A
ipython3 man_colorsin.py << A
100
A
ipython3 man_colorlnx.py << A
100
A
ipython3 man_colorsinlnx.py << A
100
A
ipython3 man_complex.py << A
100
A
cd ../..
xelatex mandelbrot_hw1.tex
bibtex mandelbrot_hw1.aux
xelatex mandelbrot_hw1.tex
xelatex mandelbrot_hw1.tex
find ./ -regextype posix-extended -regex ".*\.(aux|blg|log|bbl|out)" -type f -exec rm -f {} \;
rm -rf png
exit 0
