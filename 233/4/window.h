struct Point2d
{
double x;
double y;
};

class Window
{
private:
Point2d origin = {0.0,0.0};
double dimension = 5.0;
int height = ;
int width = ;
public:
Windows(){};
Windows(double _ox,double _oy,double _d)
{
origin.x= _ox;
origin.y= _oy;
dimension= _d;
}
double
double
double
double
double get_lpp()
{
return(dimension * 2.0 / width)
}
}

