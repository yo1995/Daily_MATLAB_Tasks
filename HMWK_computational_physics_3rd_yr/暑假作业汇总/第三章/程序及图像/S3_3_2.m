clear
a=0;b=60;
h=0.04;
n=(b-a)/h;
l=9.8;
g=9.8;
fd=[1.2 1.2];
omgd=2/3;
q=0.5;
theta(1,1:2)=[0.2 0.2+0.001];
omg(1,1:2)=0;
t(1,1:2)=0;
th(1,1)=nan;
for i=1:1:2
for ii=1:1:n
omg(ii+1,i)=omg(ii,i)-g/l*sin(theta(ii,i))*h-q*omg(ii,i)*h+fd(i)*sin(omgd*t(ii,i))*h;
theta(ii+1,i)=theta(ii,i)+omg(ii+1,i)*h;
t(ii+1,i)=t(ii,i)+h;
end
end
for ii=1:1:n
th(ii+1,1)=abs(theta(ii,1)-theta(ii,2));
end

plot(t(1:n,1),th(1:n,1))
semilogy(t,th);
xlabel('time(s)')
ylabel('\Delta\theta(radians)')
title(['F=' num2str(q)])
