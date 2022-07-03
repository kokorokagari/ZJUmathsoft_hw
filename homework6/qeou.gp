set terminal pngcairo size 600,400 font 'Times New Roman,10'   ## 格式，大小和字体
set output "qeou.png"  ###输出的文件名

#set title "一元二次方程解的三种情况"
set grid
set key box
set xrange [0:3]
set xtics (0,0.25,0.5,0.75,1,1.25,1.5,1.75,2,2.25,2.5,2.75,3)
set yrange [-1:3]

plot x*x-3*x+2 title "{/symbol D}>0",x*x-3*x+2.25 title "{/symbol D}=0",x*x-3*x+2.5 title "{/symbol D}<0",0 title "x轴" 
