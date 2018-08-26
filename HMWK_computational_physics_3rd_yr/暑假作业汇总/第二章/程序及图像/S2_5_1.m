%Î´¸ÄÍê9.28

clear
g=9.8;
v=31.18;%65mph
 vx5(1)=5*v;
 vy5(1)=0;
 
 
 x5(1)=0;
  y5(1)=0;
 yx=zeros(21,2);
 yx(1:21,1)=[-1:0.1:1];
 dt=0.01;
 i=2;
 w=1.05;
 S0=0.618;
 
 while y5(i-1)>=0
    if sqrt((vx5(i-1))^2+(vy5(i-1))^2)<14
        C=.5;
    else
        C=7.0/sqrt((vx5(i-1))^2+(vy5(i-1))^2);
    end
    Fdragx(i-1)=C*2.*vx5(i-1)^2;
    Fdragy(i-1)=C*2.*vy5(i-1)^2;
    yx(:,i)=ones(21,1).*nan;
    x5(i)=x5(i-1)+vx5(i-1)*dt;
    vx5(i)=vx5(i-1)-(Fdragx(i-1)+S0*w*vy5(i-1))*dt;
    y5(i)=y5(i-1)+vy5(i-1)*dt;
    vy5(i)=vy5(i-1)-(Fdragy(i-1)+g-S0*w*vx5(i-1))*dt;
    
    i=i+1;
 end
 yx(1:21,i-1)=[-1:0.1:1];
 plot(x5,y5,'r')
 hold on
 box on
 plot(x5,yx,'.-k')
 xlabel('x(m)')
 ylabel('z(m)')
 title('Golf')
 axis([-3,14,-1.5,1.5])
 legend('the route of the ball')
