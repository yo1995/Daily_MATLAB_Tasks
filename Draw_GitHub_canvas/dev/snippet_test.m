% clear all;
% wait_to_be_processed_txt=textread('TSoML.txt','%s');
% 
% for i = 1:10
%     rand()
% end

I=imread('../2018-05-27-17-04-15.jpg');

J=imresize(I,[7,51],'lanczos3');

% imshow(I);

figure;

imshow(J)
axis on
pause(3)
clf
close

figure;

[X,map] = rgb2ind(J,5);
imagesc(X)
colormap(map)
axis on