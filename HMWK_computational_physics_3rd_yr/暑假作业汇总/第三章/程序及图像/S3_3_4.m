clear all
l=9.8;
g=9.8;
dt=0.04;
 
omega(1)=0;
theta(1)=0.2;
t(1)=0;
q=1/2;
Omega=2/3;
hold on
box on
 
F=1.2;%0.5
for i=1:60000/dt
   omega(i+1)=omega(i)-g/l*sin(theta(i))*dt-q*omega(i)*dt+F*sin(Omega*t(i))*dt;
   theta(i+1)=theta(i)+omega(i+1)*dt;
   t(i+1)=t(i)+dt;
   
   if theta(i+1)>pi
       theta(i+1)=theta(i+1)-2*pi;
   end
   
   if theta(i+1)<-pi
       theta(i+1)=theta(i+1)+2*pi;
   end   
end

I=find(abs(rem(t,2*pi/Omega)) > 0.017);
omega(I)=NaN;
theta(I)=NaN;


%scatter(theta,omega,2);
plot(theta,omega,'.k');
axis tight
ylabel('\omega(radians/s)')
xlabel('\theta(radians)')
