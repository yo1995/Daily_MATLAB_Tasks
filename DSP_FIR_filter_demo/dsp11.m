function varargout = dsp11(varargin)
% DSP11 MATLAB code for dsp11.fig
%      DSP11, by itself, creates a new DSP11 or raises the existing
%      singleton*.
%
%      H = DSP11 returns the handle to a new DSP11 or the handle to
%      the existing singleton*.
%
%      DSP11('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DSP11.M with the given input arguments.
%
%      DSP11('Property','Value',...) creates a new DSP11 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dsp11_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dsp11_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dsp11

% Last Modified by GUIDE v2.5 14-Jun-2016 01:14:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dsp11_OpeningFcn, ...
                   'gui_OutputFcn',  @dsp11_OutputFcn, ...
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


% --- Executes just before dsp11 is made visible.
function dsp11_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dsp11 (see VARARGIN)

% Choose default command line output for dsp11
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% ssize=get(0,'screensize');
% set(hObject,'position',ssize);
global y fs Fs
load handel
y=y;fs=Fs;

% UIWAIT makes dsp11 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dsp11_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes during object creation, after setting all properties.
function uipanel4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when uipanel4 is resized.
function uipanel4_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to uipanel4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Y fs p
axes(handles.axes1);hold on
f=get(handles.axes1,'XLim');
p=audioplayer(Y,fs);
play(p)
for i=0:f(2)/100:f(2)
    if isplaying(p)
        plot(i,0,'r.','markersize',10)
        pause(f(2)/102);%pause函数延迟长 需要补偿
    end
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global p
if isa(p,'audioplayer')
    stop(p)
end

% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global fs
s2=get(handles.slider2,'Value');
if s2 == 0
    s2=0.01;
end
axis(handles.axes2,[0 fs*s2/2 0 1])
axis(handles.axes5,[0 fs*s2/2 0 1])


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global fs
s4=get(handles.slider4,'Value');
s2=get(handles.slider2,'Value');
if s2 == 0
    s2=0.01;
end
Ls2=fs*s2/2;
Lm2=0.8*Ls2*(s4+0.1);
axis(handles.axes2,[Lm2-0.1*Ls2 Lm2+0.1*Ls2 0 1])
axis(handles.axes5,[Lm2-0.1*Ls2 Lm2+0.1*Ls2 0 1])

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global y Fs

[filename, pathname]=uigetfile({'*.mp3;*.wav;*.flac;*.ogg','可用音乐文件 (*.mp3;*.wav;*.flac;*.ogg)';});
if isequal([filename, pathname],[0,0])
    load handel
    disp('缺省载入哈利路亚')
else
    [y,Fs] = audioread([pathname,filename]);
    disp(['载入文件',filename])
end

L=length(y);t=(0:L-1)/Fs;
if max(t) > 40
    t=t(t < 40);      %截短为40s以加快处理
    y=y(1:length(t),1);
    y=y';
else
    y=y(:,1)';
end
disp(['采样率为' num2str(Fs)])
uipanel2_SelectionChangeFcn(hObject, eventdata, handles)

function Y=huisheng(y,fs)
delay=floor(0.5*fs);
alpha=0.3;
Y=[y',zeros(1,delay)]+alpha*[zeros(1,delay),y'];
Y=Y';

% --- Executes when selected object is changed in uipanel2.
function uipanel2_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel2 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

global y fs Fs
if isempty(fs)
    load handel
end
X=y;fs=Fs;

str='频谱图';

% handles=guihandles;
% guidata(hObject,handles);
axes(handles.axes1);cla;
axes(handles.axes2);cla;
axes(handles.axes4);cla;
axes(handles.axes5);cla;hold on;

N=ceil(str2double(get(handles.edit1,'String')));
set(handles.edit1,'String',N);
W1=str2double(get(handles.edit2,'String'));
W2=str2double(get(handles.edit3,'String'));
Rp=str2double(get(handles.edit4,'String'));
if W1 < 1 || W1 > Fs/2-1 || W2 < 1 || W2 > Fs/2-1 || W1 > W2
    disp('输入越界，已重置默认值')
    W1 = 1000;
    W2 = 2500;
    set(handles.edit2,'String',W1);
    set(handles.edit3,'String',W2);
end
W1=2*W1/Fs;
W2=2*W2/Fs;

if get(handles.radiobutton5,'Value')==1
    N=Njudge(N);
    [b, a]=butter(N,W1,'low');
    str2=[get(handles.radiobutton5,'String') '-巴特沃兹'];
elseif get(handles.radiobutton8,'Value')==1
    N=Njudge(N);
    [b, a]=butter(N,W2,'high');
    str2=[get(handles.radiobutton8,'String') '-巴特沃兹'];
elseif get(handles.radiobutton7,'Value')==1
    N=Njudge(N);
    [b, a]=butter(N,[W1 W2]);
    str2=[get(handles.radiobutton7,'String') '-巴特沃兹'];
elseif get(handles.radiobutton6,'Value')==1
    N=Njudge(N);
    [b, a]=butter(N,[W1 W2],'stop');
    str2=[get(handles.radiobutton6,'String') '-巴特沃兹'];
elseif get(handles.radiobutton9,'Value')==1
    b=1;a=1;
    str2=get(handles.radiobutton9,'String');
elseif get(handles.radiobutton10,'Value')==1
    N=Njudge(N);
    [b, a]=cheby1(N,Rp,W1,'low');
    str2=[get(handles.radiobutton10,'String') '-切比雪夫'];
elseif get(handles.radiobutton11,'Value')==1
    N=Njudge(N);
    [b, a]=cheby1(N,Rp,W2,'high');
    str2=[get(handles.radiobutton11,'String') '-切比雪夫'];
elseif get(handles.radiobutton12,'Value')==1
    N=Njudge(N);
    [b, a]=cheby1(N,Rp,[W1 W2]);
    str2=[get(handles.radiobutton12,'String') '-切比雪夫'];
elseif get(handles.radiobutton13,'Value')==1
    N=Njudge(N);
    [b, a]=cheby1(N,Rp,[W1 W2],'stop');
    str2=[get(handles.radiobutton13,'String') '-切比雪夫'];
elseif get(handles.radiobutton17,'Value')==1
    W1=W1*fs;
    b=fir1(N-1,W1/fs,'low',hamming(N));
    a=1;
    str2=get(handles.radiobutton17,'String');
else
    errordlg('Filter type chosen error!lowpass,highpass,bandpass or bandstop?');
    return
end
%处理后信号
global Y

Y=filter(b,a,X);
[H,f]=freqz(b,a,fs);
%滤波后信号加特效
if get(handles.radiobutton15,'Value')==1
    Y=huisheng(Y,fs);
end

%求频谱
L=length(Y);
t=(0:L-1)/fs; % 计算数据时刻
Fy=fft(Y,L);

%绘图开始
%绘图参数写在前面让图片出的连续性好
absh=abs(H);
maxh=max(absh);
maxy=max(Y);
mint=min(t);maxt=max(t);

fx=0:fs/(L-1):fs;fscan=fx-fs/2;
Fx=fft(X,L);
mx=max(abs(Fx));
absmx=abs(fftshift(Fx))./mx;
absmy=abs(fftshift(Fy))./mx;
%左下
axes(handles.axes4);
plot(f,absh);
% xlim([0 pi])
set(handles.axes4,'XTick',0:pi/4:pi)
set(handles.axes4,'xtickLabel',{'0','π/4','π/2','3π/4','π'})
axis(handles.axes4,[0 pi 0 maxh*1.2]);
title('系统特性-幅频')

%左上
axes(handles.axes1);
plot(t,Y);
xlabel('时间/s');ylabel('幅度')
axis([mint maxt -1.2*maxy 1.2*maxy])
title('处理后波形图'); 


%右上
axes(handles.axes2);
plot(fscan,absmx); 
axis([0 fs/2 0 1])
xlabel('频率/Hz');ylabel('归一化幅度')
title(str)
box on

%右下
axes(handles.axes5);
plot(fscan,absmy);
axis([0 fs/2 0 1])
xlabel('频率/Hz');ylabel('归一化幅度')
title(str2)
box on

function M=Njudge(N)
handles = guihandles();
if N>20 || N<0
    disp('阶数越界，已自动重置');
    M=5;
    set(handles.edit1,'String',M);
else
    M=N;
end
