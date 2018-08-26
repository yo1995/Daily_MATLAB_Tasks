function S2_2(theta)
clc;
v_init=700;
%theta=arc;
A_m = 4e-5;
y0 = 0;%1e4;  %
dt = 0.25;
density=1.29;
x(1) = 0;
y(1) = 0;
vx = v_init * cosd(theta);%此处需要使用角度制函数
vy = v_init * sind(theta);

for i = 2:500
      x(i) = x(i-1) + vx * dt;         
      y(i) = y(i-1) + vy * dt;
      if y0~=0
        f=A_m*sqrt(vx^2+vy^2)*density*exp(-y(i-1)/y0);
      else 
        f=A_m*sqrt(vx^2+vy^2);
      end
      vy = vy - 9.8 * dt - f * vy * dt;
      vx = vx - f * vx * dt;
      if y(i) <= 0
          break
      end
end
my=max(y)/1000;
   a = -y(i) / y(i-1);           
   x(i) = (x(i) + a*x(i-1)) / (1+a);
   y(i) = 0;
   
plot(x/1000,y/1000);
hold on;
k=strcat(num2str(theta),'°');
text(12,my-1,k);
xlabel('x(km)');
ylabel('y(km)');
