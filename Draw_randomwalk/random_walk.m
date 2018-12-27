clear all;
close all;
clc

n=70000;        %���ߵĲ�����Ҳ��ͼ�������ظ�������Щλ�ÿ����ظ������԰�����С�ڵ���n
x=0;            %��ʼx����
y=0;            %��ʼy����
pix=zeros(n,2); %���߲�������������
neighbour=[-1 -1;-1 0;-1 1;0 -1;0 1;1 -1;1 0;1 1];  %��ǰ��������
for i=1:n
    r=floor(1+8*rand());    %���������ѡһ������
    y=y+neighbour(r,1);     %y��������
    x=x+neighbour(r,2);     %x��������
    pix(i,:)=[y x];         %��������
end

miny=min(pix(:,1));         %ͼ�����겻����Ϊ������������Сֵ����������Ϊ��
minx=min(pix(:,2));         %ͬ��

pix(:,1)=pix(:,1)-miny+1;   %�������������Ϊ��
pix(:,2)=pix(:,2)-minx+1;

maxy=max(pix(:,1));         %���������ֵ��Ϊ����ͼ����׼��
maxx=max(pix(:,2));

img=zeros(maxy,maxx);       %����maxy��maxx����ͼ��
for i=1:n                   %�����ߵ�ֵ����ͼ��
    img(pix(i,1),pix(i,2))=1;
end
imshow(img)