%
% gravity and velocity
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Exercise 1.1 p15
% Solve the Equation dv/dt = -g
%

clear;clc;
g=9.8;
dt=0.5;
t=0:dt:10;
v=zeros(1,length(t));
v(1)=0;
for n=1:length(t)-1
  v(n+1) = v(n) - g*dt;
end
plot(t,v,'o');
xlabel('Time(s)')
ylabel('Velocity(m/s)')