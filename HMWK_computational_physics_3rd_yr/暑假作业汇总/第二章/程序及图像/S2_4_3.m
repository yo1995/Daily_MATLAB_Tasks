xx=0:0.01:350;
x=xx./360*2*pi;
L_f=0.5*(sin(4*x)-0.25*sin(8*x)+0.08*sin(12*x)-0.025*(sin(16*x)));
plot(xx,L_f);
axis([0 350 -1 1])
xlabel('\theta (degrees)'),ylabel('Lateral force/weight')