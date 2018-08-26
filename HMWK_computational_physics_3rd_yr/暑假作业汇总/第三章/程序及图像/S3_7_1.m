clear
V=1;x(1)=0;y(1)=0;
h=0.02;n=1000;
theta=1;
vx=V*cos(theta);vy=V*sin(theta);
for k=1:1:n
x(k+1)=x(k)+vx*h;
y(k+1)=y(k)+vy*h;
if (x(k+1)>1)|(x(k+1)<-1)
    vx=-vx;
    x(k+1)=x(k)+vx*h;
end
if (y(k+1)>1)|(y(k+1)<-1)
    vy=-vy;
    y(k+1)=y(k)+vy*h;
end
end
plot(x,y,'.','markersize',4)
axis equal
xlabel('x')
ylabel('y')
