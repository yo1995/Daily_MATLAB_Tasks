clear;
c2 = VideoReader('clips/c2.mov');

c2_frames = read(c2);

l_c2 = size(c2_frames);
l_c2 = l_c2(4);

temp_size = size(c2_frames);
output = uint8(zeros(temp_size));
black_screen = uint8(zeros(temp_size));
white_screen = uint8(255.*ones(temp_size));

for i = 0:79
    j = round(3 * i);
    output(:,:,:,j+1) = black_screen(:,:,:,i+1);
    output(:,:,:,j+2) = c2_frames(:,:,:,i+1);
    output(:,:,:,j+3) = white_screen(:,:,:,i+1);
end

v = VideoWriter('output_black_white.mp4', 'MPEG-4');
v.Quality = 90;
open(v)
writeVideo(v,output)
close(v)
