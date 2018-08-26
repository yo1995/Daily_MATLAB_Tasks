%
% without resistance
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Section 2.1 p24
%


clear;clc;
k=6;%精英选手功重比可达6
x=0:0.1:5;
y=sqrt(2*k*x);
plot(x,y)
xlabel('Time(s)');
ylabel('Velocity(m/s)')
