clear
l=1;
g=9.8;
dt=0.04;
omega(1)=0;
theta(1)=0.2;
t(1)=0;
q=1;
for i=1:10/dt
   omega(i+1)=omega(i)-g/l*theta(i)*dt-q*omega(i)*dt;
   theta(i+1)=theta(i)+omega(i+1)*dt;
   t(i+1)=t(i)+dt;
end
 
hold on
box on
plot(t,theta)
 
omega(1)=0;
theta(1)=0.2;
t(1)=0;
q=5;
for i=1:10/dt
   omega(i+1)=omega(i)-g/l*theta(i)*dt-q*omega(i)*dt;
   theta(i+1)=theta(i)+omega(i+1)*dt;
   t(i+1)=t(i)+dt;
end
plot(t,theta,':r')
 
omega(1)=0;
theta(1)=0.2;
t(1)=0;
q=10;
for i=1:10/dt
   omega(i+1)=omega(i)-g/l*theta(i)*dt-q*omega(i)*dt;
   theta(i+1)=theta(i)+omega(i+1)*dt;
   t(i+1)=t(i)+dt;
end
plot(t,theta,'--k')
 
xlabel('time(s)')
ylabel('\theta(radians)')
