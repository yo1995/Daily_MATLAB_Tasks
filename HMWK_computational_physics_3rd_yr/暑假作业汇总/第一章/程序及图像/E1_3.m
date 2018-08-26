%
% movements with friction
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Exercise 1.3 p16
% By Solving the Equation dv/dt = a-b*v, we would find a terminal velocity
%

clear;clc;
a=10;b=1;
dt=0.1;
t=0:dt:10;
v=zeros(1,length(t));
v(1)=0;
for n=1:length(t)-1
  v(n+1) = v(n) + (a-b*v(n))*dt;
end
plot(t,v,'o');
xlabel('Time(s)')
ylabel('Velocity(m/s)')