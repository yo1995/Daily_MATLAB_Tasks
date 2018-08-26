y=dsolve('D2y+5*y^1+0.4*Dy=0','y(0)=0.02,Dy(0)=0','t');
ezplot(y)