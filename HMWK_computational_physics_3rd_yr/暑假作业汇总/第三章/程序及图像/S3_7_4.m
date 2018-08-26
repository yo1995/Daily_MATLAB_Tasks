clear
V=1;x(1)=0;y(1)=0.05;
h=0.01;n=5000;
theta=0.05;
vx=V*cos(theta);vy=V*sin(theta);
alpha=0.1;
hold on;
for k=1:1:n
x(k+1)=x(k)+vx*h;
y(k+1)=y(k)+vy*h;
if abs(y(k+1)<alpha/2)&(x(k+1)>1)|(x(k+1)<-1)
    vx=-vx;
    x(k+1)=x(k)+vx*h;
elseif ((y(k+1)>0)&(abs(x(k+1)+i*(y(k+1)-alpha/2))>1))
   nn=x(k+1)+i*(y(k+1)-alpha/2);
   vv=vx+i*vy;
   beta=angle(vv)-angle(nn);
   vn=abs(vv)*cos(beta)*nn;
   vp=vv-vn;
   vn=-vn;
   vx=real(vp+vn);
   vy=imag(vp+vn);
   x(k+1)=x(k)+vx*h;
   y(k+1)=y(k)+vy*h;     
elseif ((y(k+1)<0)&(abs(x(k+1)+i*(y(k+1)+alpha/2))>1))
   nn=x(k+1)+i*(y(k+1)+alpha/2);
   vv=vx+i*vy;
   beta=angle(vv)-angle(nn);
   vn=abs(vv)*cos(beta)*nn;
   vp=vv-vn;
   vn=-vn;
   vx=real(vp+vn);
   vy=imag(vp+vn);
   x(k+1)=x(k)+vx*h;
   y(k+1)=y(k)+vy*h;     
end
    plot(x(k),vx,'b.','MarkerSize',2)
end
% gama=-pi:pi/1000:pi;
% xx=cos(gama);
% yy=alpha/2+sin(gama);
% hold on
% plot(x,y,'.','markersize',4)
% plot(xx,yy)
hold off
axis equal
xlabel('x')
ylabel('vx')
