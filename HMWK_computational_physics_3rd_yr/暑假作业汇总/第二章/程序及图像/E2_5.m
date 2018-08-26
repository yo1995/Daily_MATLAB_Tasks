%
% 0 start
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Section 2.5 p24
%

clc;clear;
t(1)=0;
dt=0.05;
v(1)=0;
density=1.29;
F0=400/7;
pmax=400;
mass=70;
area=0.33;
c=0.5;
eta=2*1e-5;
h=1.4;
for i = 2:1000
      t(i) = t(i-1) + dt;
      v(i) = v(i-1)+(dt*F0/(mass))-(c*density*area*v(i-1)^2*dt/mass)-eta*area*v(i-1)/h;
      if v(i)>7
          break;
      end
end
for i = i:1000
      t(i) = t(i-1) + dt;
      v(i) = v(i-1)+(dt*pmax/(mass*v(i-1)))-(c*density*area*v(i-1)^2*dt/mass)-eta*area*v(i-1)/h;
end

plot(t,v);
xlabel('Time(s)');
ylabel('Velocity(m/s)')
grid on;
title('静力匀加速到风阻变加速')