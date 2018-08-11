clear;
output_filename = './output2.mp4';
output = VideoWriter(output_filename, 'MPEG-4');
output.FrameRate = 50;
open(output);

number_of_squares = 36;

center = 0;
half_diag = 5;
angle_full = 90 * 2*pi / 360 ;
step = angle_full / 100;
start_angle = 45 * 2*pi / 360 ;
angle_temp = 0;




figure(1);

color = colormap(parula(number_of_squares));

for hh = 0: step:angle_full
    clf;
    set(gcf,'Position',[100,100,600,600], 'color','w')
    axis([-half_diag - 1,half_diag + 1,-half_diag - 1,half_diag + 1]);
    axis equal off
    hold on
    angle_step = hh;
    for ii = 1 : number_of_squares
        angle = ii / number_of_squares * angle_step + start_angle;
        ll = [center - cos(angle) * half_diag, center - sin(angle) * half_diag];
        lu = [center - sin(angle) * half_diag, center + cos(angle) * half_diag];
        ru = [center + cos(angle) * half_diag, center + sin(angle) * half_diag];
        rl = [center + sin(angle) * half_diag, center - cos(angle) * half_diag];

        x = [center - cos(angle) * half_diag, center - sin(angle) * half_diag, center + cos(angle) * half_diag, center + sin(angle) * half_diag];
        y = [center - sin(angle) * half_diag, center + cos(angle) * half_diag, center + sin(angle) * half_diag, center - cos(angle) * half_diag];
        % z = [ii, ii, ii, ii]./10 ;
        color_step = ii / number_of_squares;
        
        H = fill(x,y, color(ii));% [color_step, color_step, color_step]);
        
        set(H,{'LineStyle'},{'none'}) %设置颜色和线宽
    end
    caxis auto
    
    % pause(0.03)
    
    frame = getframe;            
    writeVideo(output,frame); 
    
    
end

for ii = 1:output.FrameRate
    writeVideo(output,frame);  % add extra 50 frames as an ending
end

disp('Save finished. Exit.');
pause(2);
close(output);
close all;

