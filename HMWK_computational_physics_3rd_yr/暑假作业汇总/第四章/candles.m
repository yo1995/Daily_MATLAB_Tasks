t=0:0.01:5;
a=0.5;
T0=273;
T=300;
w2=0.1;w1=10;
C=1;
R=1;
E=1;
n0=1;
h=1;
k=1;
beta=1;
c=E/(R*T0);
u=c*(T-T0)/T0;
niu=n/n0;
tau=w2*k*t;
epsilon=C*k*w2/(h*w1);
au=(beta*c*n0*a)/(T0*h)*exp(-c);
av=a/k*exp(-c);
sigma0=(sigma*c*T0^3)/(C*w2*k);
dnt=w2*(k*(n0-n)-an*exp(-E/(R*T)));
dut=1/epsilon*(-u+au*niu*exp(u/1+u/c))-sigma0*(1+u/c)^4;
dniut=1-niu-av*niu*exp(u/1+u/c);
