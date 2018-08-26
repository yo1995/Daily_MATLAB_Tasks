%
% down hill @ 70mph
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Section 2.4 p24
%

%����ͨ������ó�������ﵽv=112km/h(70mph)���ٶȣ�
%mgdh*0.1/dt=1/2*m*v^2/dt+1/2CpAv^2*dh*cot(arctan0.1)/dt
%����m=70kg,A=0.33m^2,C=1,p=1.29
%��֮���۾�������ʱ������С�ܷ�����Դﵽ�����ٶ�
clc;clear;
t(1)=0;
dt=0.05;
v(1)=4;
vv(1)=4;
density=1.29;
pmax=400;
mass=70;
area=0.33;
c=0.5;
eta=2*1e-5;
h=1.4;
for i = 2:1000
      t(i) = t(i-1) + dt;
      v(i) = v(i-1)+(dt*pmax/(mass*v(i-1)))-(c*density*area*v(i-1)^2*dt/mass)-eta*area*v(i-1)/h;
      vv(i)=vv(i-1)+(dt*pmax/(mass*vv(i-1)));
end
plot(t,v);
hold on;
plot(t,vv,'.-');
xlabel('Time(s)');
ylabel('Velocity(m/s)')
text(40,5,'�п�������')
text(40,20,'�޿�������')
