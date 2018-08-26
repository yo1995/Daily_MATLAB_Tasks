clear all
g=9.8;
 
v=31.18;
 
 vx5(1)=v;
 vy5(1)=1;
 vz5(1)=0;
 
 x4(1)=0;
 vx4(1)=v;
 y4(1)=1.0668;
 vy4(1)=1;
 
  x3(1)=0;
 vx3(1)=1.3*v;
 y3(1)=1.0668;
 vy3(1)=0;
 
 x5(1)=0;
 y5(1)=1.0668;
 z5(1)=0;
 phi(1)=0;
 omega=30*2*pi;
 yx=zeros(21,2);
 yx(1:21,1)=[-1:0.1:1];
 dt=0.001;
 i=2;
 
 while y5(i-1)>=0
    yx(:,i)=ones(21,1).*nan;
    
    x4(i)=x4(i-1)+vx4(i-1)*dt;
    vx4(i)=vx4(i-1);
    y4(i)=y4(i-1)+vy4(i-1)*dt;
    vy4(i)=vy4(i-1)-g*dt;
    
    x3(i)=x3(i-1)+vx3(i-1)*dt;
    vx3(i)=vx3(i-1)-(0.0039+0.0058/(1+exp((sqrt(vx3(i-1)^2+vy3(i-1)^2+vz5(i-1)^2)-35)/5)))*vx3(i-1)*(sqrt(vx3(i-1)^2+vy3(i-1)^2+vz5(i-1)^2))*dt;
    y3(i)=y3(i-1)+vy3(i-1)*dt;
    vy3(i)=vy3(i-1)-g*dt;
    
    x5(i)=x5(i-1)+vx5(i-1)*dt;
    vx5(i)=vx5(i-1)-(0.0039+0.0058/(1+exp((sqrt(vx5(i-1)^2+vy5(i-1)^2+vz5(i-1)^2)-35)/5)))*vx5(i-1)*(sqrt(vx5(i-1)^2+vy5(i-1)^2+vz5(i-1)^2))*dt;
    y5(i)=y5(i-1)+vy5(i-1)*dt;
    vy5(i)=vy5(i-1)-g*dt;
    phi(i)=phi(i-1)+omega*dt;
    z5(i)=z5(i-1)+vz5(i-1)*dt;
    vz5(i)=vz5(i-1)+omega*vx5(i-1)*4.1*10^(-4)*dt;
    
    
    i=i+1;
 end
 yx(1:21,i-1)=[-1:0.1:1];
 hold on
 box on
 plot(x5,y5,'-b')
 plot(x3,y3,'g')
 plot(x4,y4,':r')
 plot(x5,yx,'.-k')
 xlabel('x(m)')
 ylabel('y(m)')
 title('Overhand curve ball')
 axis([-5,20,-1.2,1.2])
 legend('overhand curve','fastball','no spin');
