clear
p=0;q=10;h=0.04;n=(q-p)/h;
theta(1)=0.2;omg(1)=0;t(1)=0;
g=9.8;l=1;
for k=1:1:n
omg(k+1)=omg(k)-(g/l)*theta(k)*h;
theta(k+1)=theta(k)+omg(k+1)*h;
t(k+1)=t(k)+h;
end
plot(t,theta)
xlabel('time(s)')
ylabel('theta (radians)')
title('Euler-Cromer method')
