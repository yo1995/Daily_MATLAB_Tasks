%
% radioactive decay
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Section 1.5 p2
% Solve the Equation dNA/dt = NB/tao - NA/tao;dNB/dt = NA/tao - NB/tao
%

clc;clear;
tao = 1;
NA=zeros(1,100);
NB=zeros(1,100);
NA(1) = 100; %铀原子初始数量
NB(1) = 0;
dt = 0.05;
t=0:dt:5-dt;
for n=1:100-1
NA(n+1) = NA(n) + (NB(n)/tao - NA(n)/tao)*dt;
NB(n+1) = NB(n) + (NA(n)/tao - NB(n)/tao)*dt;
end
figure;
hold on;
plot(t,NA,'o-b');
plot(t,NB,'.-r');
xlabel('Time(s)')
ylabel('Number(%) of atoms,red dots represent B atoms')