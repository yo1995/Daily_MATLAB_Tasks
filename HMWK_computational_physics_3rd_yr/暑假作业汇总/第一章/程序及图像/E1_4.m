%
% radioactive decay
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Section 1.4 p2
% Solve the Equation dNA/dt = -NA/taoA;dNB/dt = NA/taoA - NB/taoB
%

k=3; %ratio of taoA/taoB;
taoB = 1;
taoA = k*taoB;

NA=zeros(1,200);
NB=zeros(1,200);
NA(1) = 100; %铀原子初始数量
NB(1) = 0;
dt = 0.05;
t=0:dt:10-dt;
for n=1:200-1
NA(n+1) = NA(n) - (NA(n)/taoA)*dt;
NB(n+1) = NB(n) + ((NA(n)/taoA)-(NB(n)/taoB))*dt;
end
figure;
hold on;
plot(t,NA,'o-b');
plot(t,NB,'.-r');
xlabel('Time(s)')
ylabel('Number(%) of atoms,red dots represent B atoms')