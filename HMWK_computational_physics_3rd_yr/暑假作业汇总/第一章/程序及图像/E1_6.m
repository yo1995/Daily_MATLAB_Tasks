%
% Population growth
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Section 1.6 p17
% Solve the Equation dN/dt = aN-bN^2
%

clc;clear;
cst=3;
dt = 0.03;
NA=zeros(1,cst/dt);
NB=zeros(1,cst/dt);
a=10;b=3;bb=0.013;
NA(1) = 1000;
NB(1) = 2;
t=0:dt:cst-dt;
for n=1:cst/dt-1
NA(n+1) = NA(n) + (a*NA(n)-bb*NA(n)^2)*dt;
NB(n+1) = NB(n) + (a*NB(n)-b*NB(n)^2)*dt;
end
figure;
subplot(211);
plot(t,NA,'o-b');
ylabel('Population')
subplot(212);
plot(t,NB,'.-r');
xlabel('Time(yr)')
ylabel('Population')

%��Ȼ�������ʵ�����������ϣ�������Ӧ�����ڴﵽһ��Χ��С���𵴣�����ֵ
%���������һ�ȶ�ֵ��㲻�ٸı䡣