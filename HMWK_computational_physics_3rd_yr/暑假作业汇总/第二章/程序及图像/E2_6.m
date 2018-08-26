%
% ideal trajectory
% by CHT,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Section 2.6 p31
%

function E2_6(theta,color)
clc;
v_init=700;
dt = 0.25;
x(1) = 0;
y(1) = 0;
vx = v_init * cosd(theta);%此处需要使用角度制函数
vy = v_init * sind(theta);

for i = 2:500
      x(i) = x(i-1) + vx * dt;         
      y(i) = y(i-1) + vy * dt;
      vy = vy - 9.8 * dt;
      if y(i) <= 0
          break
      end
end
my=max(y)/1000;
   a = -y(i) / y(i-1);           
   x(i) = (x(i) + a*x(i-1)) / (1+a);
   y(i) = 0;
   
h=plot(x/1000,y/1000);
set(h,'color',color)
hold on;grid on;
k=strcat(num2str(theta),'°');
text(25,my-1,k);
xlabel('x(km)');
ylabel('y(km)');
end


