c1 = VideoReader('clips/c1.mov');
c2 = VideoReader('clips/c2.mov');
c3 = VideoReader('clips/c3.mov');
c4 = VideoReader('clips/c4.mov');
c5 = VideoReader('clips/c5.mov');

c1_frames = read(c1);
c2_frames = read(c2);
c3_frames = read(c3);
c4_frames = read(c4);
c5_frames = read(c5);

l_c1 = size(c1_frames);
l_c1 = l_c1(4);
l_c2 = size(c2_frames);
l_c2 = l_c2(4);
l_c3 = size(c3_frames);
l_c3 = l_c3(4);
l_c4 = size(c4_frames);
l_c4 = l_c4(4);
l_c5 = size(c5_frames);
l_c5 = l_c5(4);

total_length = l_c1 + l_c2 + l_c3 + l_c4 + l_c5;
temp_size = size(c1_frames);
temp_size(4) = 120;
output = uint8(zeros(temp_size));

for i = 0:119
    j = round(2 * i);
    output(:,:,:,j+1) = c5_frames(:,:,:,i+1);
    k = randi(4);
    switch k
        case 1
            output(:,:,:,j+2) = c1_frames(:,:,:,i+1);
        case 2
            output(:,:,:,j+2) = c2_frames(:,:,:,i+1);
        case 3
            output(:,:,:,j+2) = c3_frames(:,:,:,i+1);
        case 4
            output(:,:,:,j+2) = c4_frames(:,:,:,i+1);
    end
end

v = VideoWriter('output_1_4rand.mp4', 'MPEG-4');
v.Quality = 90;
open(v)
writeVideo(v,output)
close(v)
