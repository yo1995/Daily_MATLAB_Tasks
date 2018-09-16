% weekday: Sun: 1, Mon: 2, Tue: 3, Wed: 4, Thu: 5, Fri: 6, Sat: 7
% datestr
% http://www.360doc.com/content/14/1206/16/16363452_430844776.shtml

%% diagram init block %%
box_dimension = 10;  % px
box_margin  = 2;  % px
width_of_graph = 53 + 1;  % 53 weeks each year(52 weeks +1 or 2 days)
height_of_graph = 7 + 1;  % 7 days each week
graph = zeros(height_of_graph, width_of_graph);

% the official color map for github contributions.
% #ebedf0  % gray
% #c6e48b
% #7bc96f
% #239a3b
% #196127  % dark green
cmap = [
    235,237,240;
    198,228,139;
    123,201,111;
    35,154,59;
    25,97,39; ] ./ 255;

% alias for colors
gray = 0;
lime = 1;
light_green = 2;
green = 3;
dark_green = 4;

color_scale = 1;  % 1* commit as the color changes, should be ceil(max_commit_count / 4)


%% date init block %%
start_year = 2001;  % just need a year to start with
if start_year == 2000
    disp('this year is special on GitHub! both a leap year and jan 1st is a saturday.');
end
second_sunday = 1;  % initialize

start_date = datestr([start_year, 01, second_sunday, 12, 00, 00]);

if(weekday(start_date) == 1)
    second_sunday = second_sunday + 7;
else
    second_sunday = second_sunday + 8 - weekday(start_date);
end

% the safe region for drawing, might draw a border here.
start_date = datestr([start_year, 01, second_sunday, 12, 34, 00]);  % the second sunday of the year
end_date = datestr(datenum(start_date) + 356);  % Sat. 50 weeks later

% s = coord_to_date_str(start_date, 7 , 8)

%% draw block test
graph(4,1) = gray;
graph(5,1) = green;
graph(6,1) = dark_green;
graph(1,53) = green;
pcolor(graph);
colormap(cmap);
axis tight equal;
[x,y] = ginput(1);
close all;
x = floor(x); y = floor(y);  % got the input, overflow panduan
disp(coord_to_date_str(start_date, y , x))

