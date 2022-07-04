# -*- coding: utf-8 -*-
#导入模块
import numpy as np
import matplotlib.pyplot as plot 
#参数设定
x0=0 #初始值z0的x0
y0=0 #初始值z0的y0
zoom=1.0 #放大倍率
N1=input("N = ") #最大迭代次数
N=int(N1)
#cx1=input("cx = ") #c的实部
#cy1=input("cy = ") #c的虚部
#cx=float(cx1)
#cy=float(cy1)
R=2 #迭代半径
a=3.0 #绘制图的横轴大小
b=3.0 #绘制图的纵轴大小
step=0.003 #绘制点的步长
name1 = 'julia_f2'+'_N'+N1
#迭代过程
def iterate(z,N,R):
    c=-0.616-0.45*1j
    for i in range(N):
        if abs(z)>R: 
            return i 
        z = (1-(z**3)/6)/((z-z*z/2)**2)+c
    return N
#坐标计算
x=np.arange(-a/(2.0*zoom)+x0,a/(2.0*zoom)+x0,step)
y=np.arange(b/(2.0*zoom)+y0,-b/(2.0*zoom)+y0,-step)
zx,zy=np.meshgrid(x, y)
z = zx + zy*1j
ufunc=np.frompyfunc(iterate,3,1)
Z=ufunc(z,N,R).astype(np.float64)
#绘制图像
#plot.plot(Z)
plot.imshow(Z,extent=(-a/2.0,a/2.0,-b/2.0,b/2.0))
#,cmap=plot.cm.gray_r)
cb = plot.colorbar(orientation='vertical',shrink=1)
cb.set_label('iteration counts')
plot.savefig('../../png/300dpi/%s.png' %(name1),dpi=300)
