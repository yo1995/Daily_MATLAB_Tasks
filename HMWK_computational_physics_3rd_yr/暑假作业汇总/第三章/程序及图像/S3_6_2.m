clear
xgm=10;b=8/3;r=25;
p=0;q=50;h=0.00001;n=(q-p)/h;
t(1)=0;x(1)=0;y(1)=1;z(1)=1;
for k=1:1:n
x(k+1)=x(k)+xgm*(y(k)-x(k))*h;
y(k+1)=y(k)-x(k)*z(k)*h+r*x(k)*h-y(k)*h;
z(k+1)=z(k)+x(k)*y(k)*h-b*z(k)*h;
t(k+1)=t(k)+h;
end
plot(x(abs(y)<1e-1),z(abs(y)<1e-1),'b.','markersize',4)
xlabel('x')
ylabel('z')
