#!/bin/sh
#为了使图片生成地更快，调整了Python代码的图片参数使得文件大小不至于过大，代价是损失了一定的精细度。
#需要用到ipython3以及numpy库、matplotlib库。
ipython3 julia_g.py << A
20
-0.4
0.6
A
ipython3 julia_g.py << A
50
-0.4
0.6
A
ipython3 julia_g.py << A
100
-0.4
0.6
A
ipython3 julia_g.py << A
200
-0.4
0.6
A
ipython3 julia_g.py << A
100
0
-0.8
A
ipython3 julia_g.py << A
100
0.285
0.01
A
ipython3 julia_g.py << A
100
-0.8
0.156
A
ipython3 julia_f1_g.py << A
100
A
ipython3 julia_f2_g.py << A
100
A
ipython3 man_julia_g.py << A
100
A

