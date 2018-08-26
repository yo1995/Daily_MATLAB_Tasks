function S2_4_4(p)
g=9.8;
v=31.18;%65mph
 vx5(1)=v;
 vy5(1)=0;
 vz5(1)=0;
 x5(1)=0;
 y5(1)=2;
 z5(1)=0;
 phi(1)=p;
 omega=0.2*2*pi;
 yx=zeros(21,2);
 yx(1:21,1)=[-1:0.1:1];
 dt=0.01;
 i=2;
 
 while y5(i-1)>=0
 
    yx(:,i)=ones(21,1).*nan;
    x5(i)=x5(i-1)+vx5(i-1)*dt;
    vx5(i)=vx5(i-1)-(0.0039+0.0058/(1+exp((sqrt(vx5(i-1)^2+vy5(i-1)^2+vz5(i-1)^2)-35)/5)))*vx5(i-1)*(sqrt(vx5(i-1)^2+vy5(i-1)^2+vz5(i-1)^2))*dt;
    y5(i)=y5(i-1)+vy5(i-1)*dt;
    vy5(i)=vy5(i-1)-g*dt;
    phi(i)=phi(i-1)+omega*dt;
    z5(i)=z5(i-1)+vz5(i-1)*dt;
    vz5(i)=vz5(i-1)+omega*vx5(i-1)*0.5*(sin(2*phi(i-1))-0.25*sin(8*phi(i-1))+0.08*sin(12*phi(i-1))-0.025*sin(16*phi(i-1)))*dt;
    
    
    i=i+1;
 end
 yx(1:21,i-1)=[-1:0.1:1];
 plot(x5,z5,'r')
 hold on
 box on
 plot(x5,yx,'.-k')
 xlabel('x(m)')
 ylabel('z(m)')
 title('Knuckle ball - horizontal deflection')
 axis([-5,22,-1,1])
 legend('horizontal deflection(z)')
