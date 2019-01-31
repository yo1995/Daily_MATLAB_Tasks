function varargout = EQ(varargin)
% EQ M-file for EQ.fig
%      EQ, by itself, creates a new EQ or raises the existing
%      singleton*.
%
%      H = EQ returns the handle to a new EQ or the handle to
%      the existing singleton*.
%
%      EQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EQ.M with the given input arguments.
%
%      EQ('Property','Value',...) creates a new EQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EQ_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EQ_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help EQ

% Last Modified by GUIDE v2.5 25-Oct-2008 12:02:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EQ_OpeningFcn, ...
                   'gui_OutputFcn',  @EQ_OutputFcn, ...
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


% --- Executes just before EQ is made visible.
function EQ_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EQ (see VARARGIN)

% Choose default command line output for EQ
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EQ wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.open,'enable','off');
set(handles.record,'enable','off');
set(handles.t,'enable','off');
set(handles.pinlv,'enable','off');
set(handles.fuzhi,'enable','off');
set(handles.showwave,'enable','off');
set(handles.checkbox1,'enable','off');   
set(handles.popupmenu2,'enable','off');
set(handles.slider1,'Value',0.5);
set(handles.slider2,'Value',0.5);
set(handles.slider3,'Value',0.5);
set(handles.slider4,'Value',0.5);
set(handles.slider5,'Value',0.5);
set(handles.slider6,'Value',0.5);
set(handles.slider7,'Value',0.5);
set(handles.slider8,'Value',0.5);
set(handles.slider9,'Value',1);
set(handles.slider10,'Value',1);
set(handles.play1,'enable','off');
set(handles.pushbutton7,'enable','off');
set(handles.pushbutton8,'enable','off');
set(handles.play2,'enable','off');
set(handles.pushbutton9,'enable','off');
set(handles.pushbutton10,'enable','off');





% --- Outputs from this function are returned to the command line.
function varargout = EQ_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in open.
function open_Callback(hObject, eventdata, handles)
% hObject    handle to open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.play1,'enable','on');
set(handles.pushbutton7,'enable','on');

[filename, pathname] = uigetfile('*.wav', 'Please chose an WAVE-file');
[handles.y handles.Fs bits]=wavread(filename);
handles.y=handles.y(:,1);
guidata(hObject,handles);

% --- Executes on button press in play2.
function play2_Callback(hObject, eventdata, handles)
% hObject    handle to play2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
switch get(findobj('Tag','popupmenu5'),'Value')
    case 1
       Fs=handles.Fs;
       long=length(handles.y)/handles.Fs;
             
    case 2
        Fs=10000;
        long=handles.t;
        
     case 3
      Fs=10000;
      long=2;
end
soundsc(handles.y,Fs);

% --- Executes on button press in record.
function record_Callback(hObject, eventdata, handles)
% hObject    handle to record (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.play1,'enable','on');
set(handles.pushbutton7,'enable','on');

if isnan(handles.t)
    errordlg('Time must be number!','Error');
end

handles.y=wavrecord(handles.t*10000, 10000,'double');
guidata(hObject,handles);
msgbox('Mission complete!','Hint');

% --- Executes on button press in showwave.
function showwave_Callback(hObject, eventdata, handles)
% hObject    handle to showwave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.play1,'enable','on');
set(handles.pushbutton7,'enable','on');
set(handles.checkbox1,'enable','on'); 
Fs=5000;
N=10000;
fuzhi=str2double(get(handles.fuzhi,'String')); 
pinlv=str2double(get(handles.pinlv,'String'));

if isnan(fuzhi)
    errordlg('Amp must be number!','Error');
end

if isnan(pinlv)
    errordlg('Frequency must be number!','Error');
end
leixing=get(findobj('Tag','popupmenu2'),'Value');
x=linspace(0,N/Fs,N);

switch leixing
    case 1
        y=fuzhi*sin(2*pi*x*pinlv);
    case 2  
        y=fuzhi*sign(sin(2*pi*x*pinlv));
    case 3 
        y=fuzhi*sawtooth(2*pi*x*pinlv,0.5);
    case 4 
        y=fuzhi*sawtooth(2*pi*x*pinlv);
    case 5 
        y=fuzhi*(2*rand(size(x))-1);
    otherwise
 end
if get(handles.checkbox1,'Value')==0.0
    handles.y=y;
else
    handles.y=handles.y+y;
end
guidata(hObject, handles);

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



function t_Callback(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t as text
%        str2double(get(hObject,'String')) returns contents of t as a double


% --- Executes during object creation, after setting all properties.
function t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function pinlv_Callback(hObject, eventdata, handles)
% hObject    handle to pinlv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pinlv as text
%        str2double(get(hObject,'String')) returns contents of pinlv as a double


% --- Executes during object creation, after setting all properties.
function pinlv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pinlv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function fuzhi_Callback(hObject, eventdata, handles)
% hObject    handle to fuzhi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fuzhi as text
%        str2double(get(hObject,'String')) returns contents of fuzhi as a double


% --- Executes during object creation, after setting all properties.
function fuzhi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fuzhi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



% --- Executes on button press in play1.
function play1_Callback(hObject, eventdata, handles)
% hObject    handle to play1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton8,'enable','on');
set(handles.play2,'enable','on');
set(handles.pushbutton9,'enable','on');
set(handles.pushbutton10,'enable','on');
switch get(findobj('Tag','popupmenu5'),'Value')
    case 1
       x=linspace(0,length(handles.y)/handles.Fs,length(handles.y));
       plot(handles.axes1,x,handles.y);
       soundsc(handles.y,handles.Fs);
    case 2
        x=linspace(0,handles.t,handles.t*10000);
        plot(handles.axes1,x,handles.y);
        soundsc(handles.y,10000);
     case 3
     x=linspace(0,2,10000);
     plot(handles.axes1,x,handles.y);
     soundsc(handles.y,10000);
end




% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5

switch get(hObject,'Value')
    case 1
        set(handles.open,'enable','on');
        set(handles.record,'enable','off');
        set(handles.t,'enable','off');
        set(handles.pinlv,'enable','off');
        set(handles.fuzhi,'enable','off');
        set(handles.showwave,'enable','off');
        set(handles.checkbox1,'enable','off');   
        set(handles.popupmenu2,'enable','off');
       
    case 2
        set(handles.open,'enable','off');
        set(handles.record,'enable','on');
        set(handles.t,'enable','on');
        set(handles.pinlv,'enable','off');
        set(handles.fuzhi,'enable','off');
        set(handles.showwave,'enable','off');
        set(handles.checkbox1,'enable','off');   
        set(handles.popupmenu2,'enable','off');
     case 3
        set(handles.open,'enable','off');
        set(handles.record,'enable','off');
        set(handles.t,'enable','off');
        set(handles.pinlv,'enable','on');
        set(handles.fuzhi,'enable','on');
        set(handles.showwave,'enable','on');
        set(handles.checkbox1,'enable','off');   
        set(handles.popupmenu2,'enable','on');
end

% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton8,'enable','on');
set(handles.play2,'enable','on');
set(handles.pushbutton9,'enable','on');
set(handles.pushbutton10,'enable','on');
Y=fft(handles.y);
switch get(findobj('Tag','popupmenu5'),'Value')
    case 1
       f=linspace(0,handles.Fs/2,length(handles.y)/2);
       Y=Y(1:length(handles.y)/2);
       plot(handles.axes2,f,2*sqrt(Y.*conj(Y))/length(handles.y));
      
    case 2
        f=linspace(0,5000,length(handles.y)/2);
        Y=Y(1:length(handles.y)/2);
       plot(handles.axes2,f,2*sqrt(Y.*conj(Y))/length(handles.y));
        
     case 3
     f=linspace(0,2500,length(handles.y)/2);
     Y=Y(1:length(handles.y)/2);
     plot(handles.axes2,f,2*sqrt(Y.*conj(Y))/length(handles.y));
end

handles.H=2*sqrt(Y.*conj(Y))/length(handles.y);
guidata(hObject,handles);



% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
switch get(findobj('Tag','popupmenu5'),'Value')
    case 1
       Fs=handles.Fs;
       long=length(handles.y)/handles.Fs;
             
    case 2
        Fs=10000;
        long=handles.t;
        
     case 3
      Fs=10000;
      long=2;
end
N=2^ceil(log2(Fs*long));
Y = fft(handles.y,N);
Pyy = Y.* conj(Y) / N;
f = Fs*(0:N/2-1)/N;f(N/2+1:N) = f(N/2:-1:1);

zs=get(handles.zhishu,'Value');
fmax=max(f);
if fmax>30
    s=get(handles.slider1,'Value');
    tag=find(f>=30 & f<=100);
    Pyy(tag)=Pyy(tag)*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;
end
if fmax>100
    s=get(handles.slider2,'Value');
    tag=find(f>=100 & f<=200);
    Pyy(tag)=Pyy(tag)*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;
end
if fmax>200
    s=get(handles.slider3,'Value');
    tag=find(f>=200 & f<=500);
    Pyy(tag)=Pyy(tag)*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;
end
if fmax>500
    s=get(handles.slider4,'Value');
    tag=find(f>=500 & f<=1000);
    Pyy(tag)=Pyy(tag)*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;
end
if fmax>1000
    s=get(handles.slider5,'Value');
    tag=find(f>=1000 & f<=2000);
    Pyy(tag)=Pyy(tag)*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;
end
if fmax>2000
    s=get(handles.slider6,'Value');
    tag=find(f>=2000 & f<=4000);
    Pyy(tag)=Pyy(tag)*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;
end
if fmax>4000
    s=get(handles.slider7,'Value');
    tag=find(f>=4000 & f<=8000);
    Pyy(tag)=Pyy(tag)*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;
end
if fmax>8000
    s=get(handles.slider8,'Value');
    tag=find(f>=8000 & f<=16000);
    Pyy(tag)=Pyy(tag)*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;Y(tag)=Y(tag).*(s*2)^zs;
end
plot(handles.axes2,f(1:N/2),Pyy(1:N/2));
handles.y=double(ifft(Y));
switch get(findobj('Tag','popupmenu5'),'Value')
    case 1
       x=linspace(1,length(handles.y)/handles.Fs,length(handles.y));
       plot(handles.axes1,x,handles.y);
      
    case 2
        x=linspace(0,handles.t,handles.t*10000);
        plot(handles.axes1,x,handles.y);
     
     case 3
     x=linspace(0,2,10000);
     plot(handles.axes1,x,handles.y);
  
end
guidata(hObject, handles);

% --- Executes on selection change in zhishu.
function zhishu_Callback(hObject, eventdata, handles)
% hObject    handle to zhishu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns zhishu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from zhishu


% --- Executes during object creation, after setting all properties.
function zhishu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zhishu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
switch get(findobj('Tag','popupmenu5'),'Value')
    case 1
       f=handles.Fs/2;
    case 2
        f=5000;
    case 3
      f=2500;
end
xmax=get(hObject,'Value')*f;
ymin=0;
ymax=max(handles.H)*1.2;
axis(handles.axes2,[0 xmax ymin ymax]);

% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
switch get(findobj('Tag','popupmenu5'),'Value')
    case 1
       x=length(handles.y)/handles.Fs
    case 2
        x=handles.t;
    case 3
     x=2;
end
xmin=0;
xmax=get(hObject,'Value')*2*x;
ymax=max(handles.y)*1.2;
ymin=min(handles.y)*1.2;
axis(handles.axes1,[0 xmax ymin ymax]);


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function jieshu_Callback(hObject, eventdata, handles)
% hObject    handle to jieshu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jieshu as text
%        str2double(get(hObject,'String')) returns contents of jieshu as a double


% --- Executes during object creation, after setting all properties.
function jieshu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jieshu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function freq2_Callback(hObject, eventdata, handles)
% hObject    handle to freq2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of freq2 as text
%        str2double(get(hObject,'String')) returns contents of freq2 as a double


% --- Executes during object creation, after setting all properties.
function freq2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to freq2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
js=str2double(get(handles.jieshu,'String'));
W1=str2double(get(handles.freq1,'String'));
W2=str2double(get(handles.freq2,'String'));
if W1>1
    W1=2*W1/handles.Fs;
end
if W2>1
    W2=2*W2/handles.Fs;
end
if get(handles.ditong,'Value')==1
   [b a]=butter(js,W1,'low');
elseif get(handles.gaotong,'Value')==1
   [b a]=butter(js,W2,'high');
elseif get(handles.daitong,'Value')==1
    [b a]=butter(js,[W1 W2]);
elseif get(handles.daizhu,'Value')==1
    [b a]=butter(js,[W1 W2],'stop');
else
    errordlg('Filter type chosen error!lowpass,highpass,bandpass or bandstop?');
    return;
end
[H f]=freqz(b,a,512);
plot(handles.axes3,f,abs(H));
maxf=max(f)/2;
axis(handles.axes3,[0 maxf 0 max(abs(H))*1.5]);

handles.y=filter(b,a,handles.y);
handles.f=f;
handles.H=abs(H);
guidata(hObject, handles);
% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Y=fft(handles.y);
switch get(findobj('Tag','popupmenu5'),'Value')
    case 1
      f=linspace(0,handles.Fs/2,length(handles.y)/2);
       Y=Y(1:length(handles.y)/2);
       plot(handles.axes2,f,2*sqrt(Y.*conj(Y))/length(handles.y));
        x=linspace(1,length(handles.y)/handles.Fs,length(handles.y));
       plot(handles.axes1,x,handles.y);
       soundsc(handles.y,handles.Fs);
    case 2
        f=linspace(0,5000,length(handles.y)/2);
        Y=Y(1:length(handles.y)/2);
       plot(handles.axes2,f,2*sqrt(Y.*conj(Y))/length(handles.y));
        x=linspace(0,handles.t,handles.t*10000);
        plot(handles.axes1,x,handles.y);
        soundsc(handles.y,10000);
     case 3
     f=linspace(0,2500,length(handles.y)/2);
     Y=Y(1:length(handles.y)/2);
     plot(handles.axes2,f,2*sqrt(Y.*conj(Y))/length(handles.y));
         x=linspace(0,2,10000);
     plot(handles.axes1,x,handles.y);
     soundsc(handles.y,10000);
end

