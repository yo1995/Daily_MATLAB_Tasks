clear
l=1;
g=9.8;
Fd=0.2;
dt=0.04;
 
omega(1)=0;
theta(1)=0.2;
t(1)=0;
q=1.0;
OM=2;
 
for i=1:20/dt
   omega(i+1)=omega(i)-g/l*theta(i)*dt-q*omega(i)*dt+Fd*sin(OM*t(i))*dt;
   theta(i+1)=theta(i)+omega(i+1)*dt;
   t(i+1)=t(i)+dt;
end
hold on
box on
plot(t,theta)
 
xlabel('time(s)')
ylabel('\theta(radians)')
text(8,0.12,{'driven pendulum';'OM=2.0 Fd=0.2';'q=1.0'})