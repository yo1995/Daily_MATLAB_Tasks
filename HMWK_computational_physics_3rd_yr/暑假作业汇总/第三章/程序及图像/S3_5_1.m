clear
figure
box on

for mu=1.5:0.1:4
x=0:0.001:1;
y=mu.*x.*(1-x);
xx(1)=0.2;yy(1)=0;
for k=1:1:100
if rem(k,2)==0
xx(k+1)=yy(k);
yy(k+1)=yy(k);
else 
xx(k+1)=xx(k);
yy(k+1)=xx(k+1)*mu*(1-xx(k+1));
end
end
plot(x,y)
hold on
plot(x,x)
plot(xx,yy,'r')
    xlabel('xn')
    ylabel('x(n+1)')
    text(0.1,0.9,['\mu=' num2str(mu)])
hold off
%pause(0.1)
    frame = getframe(1);
    im=frame2im(getframe);
    [imind,cm]=rgb2ind(im,256);
    if mu == 1.5
        imwrite(imind,cm,'µü´úÍ¼.GIF','gif','DelayTime',0.1,'loopcount',inf);
    else
        imwrite(imind,cm,'µü´úÍ¼.GIF','gif','DelayTime',0.1,'writemode','append');
    end
end


