clear all
x(1)=0.2;
y(1)=0;
 
vx(1)=0.5;
vy(1)=0.4;
 
dt=0.01;
hold on
box on
 
theta=0:pi/20:2*pi;
X=sin(theta);
Y=cos(theta);
plot(X,Y,'k-')
 
for i=1:100/dt
   x(i+1)=x(i)+vx(i)*dt;
   y(i+1)=y(i)+vy(i)*dt;
   
   if (x(i+1)^2+y(i+1)^2)>=1
       cos=x(i)./sqrt(x(i)^2+y(i)^2);
       sin=y(i)./sqrt(x(i)^2+y(i)^2);
       
       vx(i+1)=vx(i).*sin.*sin-vx(i).*cos.*cos-vy(i).*cos.*sin-vy(i).*sin.*cos;
       vy(i+1)=-vx(i).*sin.*cos-vx(i).*cos.*sin+vy(i).*cos.*cos-vy(i).*sin.*sin;
   else
       vx(i+1)=vx(i);
       vy(i+1)=vy(i);
   end
   plot(x(i),y(i),'b.','MarkerSize',2)
end
 
 
axis equal
axis([-1,1,-1,1])
xlabel('x')
ylabel('y')
title('Circular stadium - trajectory')