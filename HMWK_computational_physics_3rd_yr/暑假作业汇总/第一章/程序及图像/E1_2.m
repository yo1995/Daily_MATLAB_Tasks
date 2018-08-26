%
% movements
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Exercise 1.2 p16
% Solve the Equation dx/dt = v
%

clear;clc;
v=40;
dt=0.5;
t=0:dt:10;
x=zeros(1,length(t));
x(1)=0;
for n=1:length(t)-1
  x(n+1) = x(n) + v*dt;
end
plot(t,x,'o');
xlabel('Time(s)')
ylabel('Distance(m)')