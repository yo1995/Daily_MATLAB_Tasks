clear
a=0;b=60;
h=0.01;
n=(b-a)/h;
l=9.8;
g=9.8;
omgd=2/3;
q=0.5;
    theta(1)=0.2;
    theta(2)=0.2;
    omg(1)=0;
    omg(2)=0;
    t(1)=0;
    t(2)=0+h;
hold on;
for fd=1.35:0.001:1.48
for ii=2:1:n
omg(ii+1)=omg(ii)-g/l*sin(theta(ii))*h-q*omg(ii)*h+fd*sin(omgd*t(ii))*h;
theta(ii+1)=theta(ii)+omg(ii+1)*h;
t(ii+1)=t(ii)+h;

   if theta(ii+1)>pi
       theta(ii+1)=theta(ii+1)-2*pi;
   end
   
   if theta(ii+1)<-pi
       theta(ii+1)=theta(ii+1)+2*pi;
   end   
   if abs(theta(ii+1))<abs(theta(ii)) && abs(theta(ii))>abs(theta(ii-1))
   plot(fd,theta(ii+1),'.b');
   end
   end
end

xlabel('FD')
ylabel('\theta(radians)')
title('Bifurcation diagram')