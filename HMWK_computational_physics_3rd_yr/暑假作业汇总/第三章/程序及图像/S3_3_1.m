clear
a=0;b=60;
h=0.04;
n=(b-a)/h;
l=9.8;
g=9.8;
fd=[0 0.5 1.2];
omgd=2/3;
q=0.5;
theta(1,1:3)=0.2;
omg(1,1:3)=0;
t(1,1:3)=0;
for i=1:1:3
for ii=1:1:n
omg(ii+1,i)=omg(ii,i)-g/l*sin(theta(ii,i))*h-q*omg(ii,i)*h+fd(i)*sin(omgd*t(ii,i))*h;
theta(ii+1,i)=theta(ii,i)+omg(ii+1,i)*h;
t(ii+1,i)=t(ii,i)+h;
end
end
subplot(3,1,1)
plot(t(1:n,1),theta(1:n,1))
xlabel('time(s)')
ylabel('theta(radians)')
title('F=0')
subplot(3,1,2)
plot(t(1:n,2),theta(1:n,2))
xlabel('time(s)')
ylabel('theta(radians)')
title('F=0.5')
subplot(3,1,3)
plot(t(1:n,3),theta(1:n,3))
xlabel('time(s)')
ylabel('theta(radians)')
title('F=1.2')
