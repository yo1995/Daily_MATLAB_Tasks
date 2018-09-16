% maybe put all the needed presets global variables here in the future


function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 16-Sep-2018 14:23:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% in main function define some global variables

%% diagram init block %%
global width_of_graph;
width_of_graph = 53 + 1;  % 53 weeks each year(52 weeks +1 or 2 days)
global height_of_graph;
height_of_graph = 7 + 1;  % 7 days each week
global graph;
graph = zeros(height_of_graph, width_of_graph);

% the official color map for github contributions.
% #ebedf0  % gray
% #c6e48b
% #7bc96f
% #239a3b
% #196127  % dark green
% #a12306  % my reserved color, for invalid blocks
global cmap;
cmap= [
    235,237,240;
    198,228,139;
    123,201,111;
    35,154,59;
    25,97,39; 
    161,35,6] ./ 255;

% alias for colors
global gray; 
global lime;
global light_green;
global dark_green;
global green;
global dark_red;
gray = 0;
lime = 1;
light_green = 2;
green = 3;
dark_green = 4;
dark_red = 5;
global color_scale;
max_commit_count = 4;  % your maximum commits number overall. for me, it's just 4. maybe you had something like 40 commits on a special day. just set it.
% if you are drawing on a blank year, you can just leave it a 4.
% otherwise, adjust as you wish.
color_scale = ceil(max_commit_count / 4);  % * commit as the color changes, should be ceil(max_commit_count / 4), ceil to override the maximus

%% date init block %%
global start_year;
popup_sel_index = get(handles.popupmenu1, 'Value');
start_year = popup_sel_index + 2000;  % just need a year to start with, 2001 = 2000 + 1

reset_start_date();

%% default graph
reset_graph(handles);

%% other init
handles.text3.String = 'Mode: Null';



% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = 1;  % init
y = 1;
global graph;
global cmap;
global color_scale;
global start_year;
popup_sel_index = get(handles.popupmenu1, 'Value');
start_year = popup_sel_index + 2000;
reset_start_date();

axes(handles.axes1);
handles.text3.String = 'Mode: Append/Add';

while 1 
    [x,y] = read_ginput_and_change_graph();
    if (x > 1 && y > 0 && x < 53 && y < 8)   % if click outside or click right button, quit
        handles.text2.String = ["Current block's date:", coord_to_date_str(y, x)];
        if graph(y,x) < 4 * color_scale
            graph(y,x) = graph(y,x) + 1 * color_scale;
        else
            handles.text2.String = "Reach commit# upper limit. Will not add.";
        end
        cla;
        pcolor(graph);
        colormap(cmap);
        axis tight equal;
        yticks([1 2 3 4 5 6 7])
        yticklabels({'Sat', 'Fri', 'Thu', 'Wed', 'Tue', 'Mon', 'Sun'})
        xlabel('Weeks');
        ylabel('Weekdays');
    else
        break;
    end
end

handles.text2.String = "Add date stopped.";



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = 1;  % init
y = 1;
global graph;
global cmap;
global color_scale;
global start_year;
popup_sel_index = get(handles.popupmenu1, 'Value');
start_year = popup_sel_index + 2000;
reset_start_date();

axes(handles.axes1);
handles.text3.String = 'Mode: Deselect/Drop';

while 1
    [x,y] = read_ginput_and_change_graph();
    if (x > 1 && y > 0 && x < 53 && y < 8)
        handles.text2.String = ["Current block's date:", coord_to_date_str(y, x)];
        if graph(y,x) > 0
            graph(y,x) = graph(y,x) - 1 * color_scale;
        else
            graph(y,x) = 0;  % sanity reset
            handles.text2.String = "Reach commit# lower limit. Will not drop.";
        end
        cla;
        pcolor(graph);
        colormap(cmap);
        axis tight equal;
        yticks([1 2 3 4 5 6 7])
        yticklabels({'Sat', 'Fri', 'Thu', 'Wed', 'Tue', 'Mon', 'Sun'})
        xlabel('Weeks');
        ylabel('Weekdays');
    else
        break;
    end
end

handles.text2.String = "Drop date stopped.";





% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

reset_graph(handles);
handles.text3.String = 'Mode: Clear All';



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global graph;
global cmap;
[saveFileName, savePathName] = uiputfile({'*.sh','Shell Script(*.sh)'},'Save Generated Script');
if isequal(saveFileName,0) || isequal(savePathName,0)
    handles.text3.String = 'Canceled';
    pause(2)
    handles.text3.String = 'Mode: Save';
else
    %% save to shell file, could be a large chunk of code.
    system_current_date = datestr(now, 'mmddHHMMyyyy.SS');
    % 1. add git config header for myself. commented out since it's no need
    % for those who fork
    file_output_string = '';
    username = 'YOUR USERNAME';
    email = 'YOUR EMAIL';
    commit_text_file_path = ["'", savePathName, "magicalTimeLapse.txt'"];
    file_output_string = [file_output_string, ...
    'echo ""',  newline, ...
	'echo " ========================================================= "', newline, ...
	'echo " |                  GitHub Timelapse.sh                  | "', newline, ...
	'echo " |      To draw on the canvas of your GitHub commits     | "', newline, ...
	'echo " |                  v1.0 (16 Sept. 2018)                 | "', newline, ...
	'echo " |                   Created by yo1995                   | "', newline, ...
	'echo " ========================================================= "', newline, ...
	'echo ""', newline, ...
	'echo " Intro: https://github.com/yo1995/Daily_MATLAB_Tasks/tree/master/Draw_GitHub_canvas "', newline, ...
	'echo " Please run with root permission. "', newline, ...
	'echo ""', newline];
    file_output_string = [file_output_string, '# git config user.name ', '"', username , '"', newline];
    file_output_string = [file_output_string, '# git config user.email ', '"', email , '"', newline];
    file_output_string = [file_output_string, 'commit_text_file_path=', commit_text_file_path, newline];
    file_output_string = [file_output_string, '# check root', newline];
    file_output_string = [file_output_string, '[[ $EUID -ne 0 ]] && echo -e "$Error: This script must be run as root!" && exit 1', newline];  % not sure if valid
	% let user decide if the script is properly set.
    file_output_string = [file_output_string, ...
        'git config --show user.name', newline, ...
        'git config --show user.email', newline, ...
        'echo "Path is: $commit_text_file_path"', newline, ...
        'echo "Please make sure your username, email, path and push(at the end) are properly set. Proceed?(yes/no)"', newline, ...
        'read ans', newline, ...
        'while [[ "x"$ans != "xyes" && "x"$ans != "xno" ]]', newline, ...
        'do', newline, ...
        'read ans', newline, ...
        'echo "Your inputs: $ans, please input yes or no."', newline, ...
        'done', newline, ...
        'case $ans in', newline, ...
        '    yes ) break;;', newline, ...
        '    no ) exit;;', newline, ...
        'esac', newline];
    
    % 2. generate shell script with your desired corpus text.
    % be awared! if you color_scale is large, you might need a long novel.
    max_word_count = sum(sum(graph)) - 35 - 35 - 10;  % minus the red wall and the colorbar
    corpus = textread('TSoML.txt','%s');
    if max_word_count > length(corpus)
        handles.text2.String = "Word count overflow. Abort.";
        return
    end
    % 3. start to generate the shell script
    i = 0;
    j = 0;
    k = 0;
    for i = 0:350
        row = 7 - mod(i, 7);
        col = round(i/7) + 2;  % since we start from col 2nd
        if graph(row, col) ~= 0
            for j = 1:graph(row, col)
                k = k + 1;
                file_output_string = [file_output_string, 'date ', coord_to_date_str_save(row, col), newline];
                file_output_string = [file_output_string, 'echo "', sprintf('%s',corpus{k}), '" >> ${commit_text_file_path}', newline];
                file_output_string = [file_output_string, 'git add ${commit_text_file_path}', newline];
                file_output_string = [file_output_string, 'git commit -m "', coord_to_date_str(row, col), sprintf(' %s',corpus{k}), '"', newline];
            end
        end
    end
    % 4. some clean up work
    file_output_string = [file_output_string, 'date ', system_current_date, newline];
    file_output_string = [file_output_string, 'git push', newline];
    % 5. save to file
    fid = fopen([savePathName, saveFileName], 'wt+');
    try
        fprintf(fid, '%s', file_output_string);
    catch
        fclose(fid);  % avoid filelock
        handles.text3.String = 'File save error. Abort.';
        pause(5)
        handles.text3.String = 'Mode: Save';
        return
    end
    fclose(fid);
    
    h = figure(2);
    set(gcf,'Position',[320,240,1350,250]);
    pcolor(graph);
    colormap(cmap);
    axis normal tight equal ;
    yticks([1 2 3 4 5 6 7])
    yticklabels({'Sat', 'Fri', 'Thu', 'Wed', 'Tue', 'Mon', 'Sun'})
    xlabel('Weeks');ylabel('Weekdays');
    temp = split(saveFileName,'.');
    saveas(gcf, [savePathName, sprintf('%s',temp{1}), '.png'], 'png')
    close(h);
    
    % imwrite(h, [savePathName, 'magicalTimeLapse.png']);

end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.text3.String = 'Mode: From image';
global graph;
global cmap;
global color_scale;
global start_year;
popup_sel_index = get(handles.popupmenu1, 'Value');
start_year = popup_sel_index + 2000;
reset_start_date();

axes(handles.axes1);

[filename, pathname] = uigetfile({'*.jpg','JPEG file (*.jpg)'}, 'Select an image file',  'MultiSelect', 'off');
if isequal(filename,0) || isequal(pathname,0)
    handles.text3.String = 'Canceled';
    pause(2)
    handles.text3.String = 'Mode: From image';
else
	% disp(['User selected ', fullfile(pathname, filename)])
    img=imread(fullfile(pathname, filename));
    img_resized = imresize(img,[7,51],'lanczos3');
    [X,map] = rgb2ind(img_resized,5);
    graph(1:7,2:52) = flipud(X.*color_scale);
    % imagesc(X)
    cla;
    pcolor(graph);
    colormap(cmap);
    axis tight equal;
    yticks([1 2 3 4 5 6 7])
    yticklabels({'Sat', 'Fri', 'Thu', 'Wed', 'Tue', 'Mon', 'Sun'})
    xlabel('Weeks');
    ylabel('Weekdays');
end


function [x,y] = read_ginput_and_change_graph()
[x,y,button_acquired] = ginput(1);
if button_acquired ~= 1  % keys other than left mouse button pressed
    x = -1;
    y = -1;
    return
end
x = floor(x); 
y = floor(y);
return


function reset_start_date()
global start_year;
global start_date;
global end_date;
second_sunday = 1;  % initialize
start_date = datestr([start_year, 01, second_sunday, 12, 34, 00]);
if(weekday(start_date) == 1)
    second_sunday = second_sunday + 7;
else
    second_sunday = second_sunday + 8 - weekday(start_date);
end
% the safe region for drawing, might draw a border here.
start_date = datestr([start_year, 01, second_sunday, 12, 34, 00]);  % the second sunday of the year
end_date = datestr(datenum(start_date) + 356);  % Sat. 50 weeks later


function reset_graph(handles)
global graph;
global height_of_graph;
global width_of_graph;
global color_scale;
global cmap;
axes(handles.axes1);  % maybe buggy
cla;
graph = zeros(height_of_graph, width_of_graph);
% in order to avoid the color map shows incorrect color, draw in invisible
% area a properly mapped color bar.
% gray = 0;
% lime = 1;
% light_green = 2;
% green = 3;
% dark_green = 4;
% dark_red = 5;
graph(1,54) = 0;
graph(2,54) = 1 * color_scale;
graph(3,54) = 2 * color_scale;
graph(4,54) = 3 * color_scale;
graph(5,54) = 4 * color_scale;
% note in the saving process there is a corresponding magic number.
graph(1:7,1) = 5 * color_scale;
graph(1:7,53) = 5 * color_scale;

pcolor(graph);
colormap(cmap);
axis tight equal;
yticks([1 2 3 4 5 6 7])
yticklabels({'Sat', 'Fri', 'Thu', 'Wed', 'Tue', 'Mon', 'Sun'})
xlabel('Weeks');ylabel('Weekdays');


function return_str = coord_to_date_str(x, y)
global start_date;
if (x > 7 || y > 52)
    return_str = 'Overflow date in diagram!';
    return;
end

d = datenum(start_date);
d = d + (y - 2) * 7 + (7 - x);  % weeks and days
return_str = datestr(d);
return;


function return_str = coord_to_date_str_save(x, y)
global start_date;
if (x > 7 || y > 52)
    return_str = '';
    return;
end

d = datenum(start_date) + rand() / 10;  % to avoid overlapped commit time
d = d + (y - 2) * 7 + (7 - x);  % weeks and days
return_str = datestr(d, 'mmddHHMMyyyy.SS');
return;
