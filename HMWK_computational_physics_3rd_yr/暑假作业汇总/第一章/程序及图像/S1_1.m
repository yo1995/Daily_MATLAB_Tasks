%
% radioactive decay
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Section 1.2 p2
% Solve the Equation dN/dt = -N/tao
%

N=zeros(1,100);
N2=zeros(1,10);
N(1) = 100; %铀原子初始数量
N2(1)=100;
dt = 0.05;
dt2=0.5;
tao=1;
for n=1:100-1
N(n+1) = N(n) - (N(n)/tao)*dt;

end
for n2=1:10-1
N2(n2+1) = N2(n2) - (N2(n2)/tao)*dt2;
end
n=0:100-1;
t=n*dt;
n2=0:10-1;
t2=n2*dt2;
Nplot=N.*exp(-t/tao);
N2plot=N2.*exp(-t2/tao);
figure;
plot(t,N,'.-b');
text(3,80,'Time Constant=1s');
%text(3,70,'Time Step=0.05s');
xlabel('Time(s)')
ylabel('Number of atoms')
%不精确解法
hold on;
plot(t2,N2,'.r','MarkerSize',15);
hold off;