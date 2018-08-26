A=0.33;
m=70;
P=400;
rho=1;
v1(1)=4;
v2(1)=4;
t(1)=0;
dt=0.1;
 
for ii=2:200/dt
    v1(ii)=v1(ii-1)+P/(m*v1(ii-1))*dt;
    v2(ii)=v2(ii-1)+(P/(m*v2(ii-1))-rho*A*v2(ii-1)^2/2/m)*dt;
    t(ii)=t(ii-1)+dt;
end
 
hold on
box on
plot(t,v1,'-b')
plot(t,v2,':r')
xlabel('time (s)')
ylabel('velocity (m/s)')
title('Bicycle simulation: velocity vs. time')
text(15,35,'No air resistance')
text(75,10,'With air resistance')
