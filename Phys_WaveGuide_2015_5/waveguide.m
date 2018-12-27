function varargout = waveguide(varargin)
% WAVEGUIDE M-file for waveguide.fig
%      WAVEGUIDE, by itself, creates a new WAVEGUIDE or raises the existing
%      singleton*.
%
%      H = WAVEGUIDE returns the handle to a new WAVEGUIDE or the handle to
%      the existing singleton*.
%
%      WAVEGUIDE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WAVEGUIDE.M with the given input arguments.
%
%      WAVEGUIDE('Property','Value',...) creates a new WAVEGUIDE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before waveguide_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to waveguide_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help waveguide

% Last Modified by GUIDE v2.5 12-Jun-2010 21:55:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @waveguide_OpeningFcn, ...
                   'gui_OutputFcn',  @waveguide_OutputFcn, ...
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


% --- Executes just before waveguide is made visible.
function waveguide_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to waveguide (see VARARGIN)

% Choose default command line output for waveguide
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes waveguide wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = waveguide_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


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


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on selection change in mode.
function mode_Callback(hObject, eventdata, handles)
% hObject    handle to mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns mode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mode


% --- Executes during object creation, after setting all properties.
function mode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mvalue_Callback(hObject, eventdata, handles)
% hObject    handle to mvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mvalue as text
%        str2double(get(hObject,'String')) returns contents of mvalue as a double


% --- Executes during object creation, after setting all properties.
function mvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nvalue_Callback(hObject, eventdata, handles)
% hObject    handle to nvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nvalue as text
%        str2double(get(hObject,'String')) returns contents of nvalue as a double


% --- Executes during object creation, after setting all properties.
function nvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function avalue_Callback(hObject, eventdata, handles)
% hObject    handle to avalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of avalue as text
%        str2double(get(hObject,'String')) returns contents of avalue as a double


% --- Executes during object creation, after setting all properties.
function avalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to avalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bvalue_Callback(hObject, eventdata, handles)
% hObject    handle to bvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bvalue as text
%        str2double(get(hObject,'String')) returns contents of bvalue as a double


% --- Executes during object creation, after setting all properties.
function bvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fvalue_Callback(hObject, eventdata, handles)
% hObject    handle to fvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fvalue as text
%        str2double(get(hObject,'String')) returns contents of fvalue as a double


% --- Executes during object creation, after setting all properties.
function fvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function fcvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fcvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in Rset.
function Rset_Callback(hObject, eventdata, handles)
% hObject    handle to Rset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%常数值
e0=1/(36*pi)*10^(-9);
u0=4*pi*10^(-7);
%此处通过gui界面获得需要的模式参数。格式为TE/TM m n模
m = str2double(get(handles.mvalue, 'String'));
n = str2double(get(handles.nvalue, 'String'));
a = str2double(get(handles.avalue, 'String'));
b = str2double(get(handles.bvalue, 'String'));
f = str2double(get(handles.fvalue, 'String'))*10^9; %GHz
e = str2double(get(handles.evalue, 'String'));
u = str2double(get(handles.uvalue, 'String'));
mode0=get(handles.mode,'value');
mode1=get(handles.mode2,'value');
%读取预置图片
cla(handles.axes1);
axes(handles.axes1);
re=imread('re.JPG');
image(re)
%检测是否输入了数字
cla(handles.view);
if isnan(m)==1||isnan(n)==1||isnan(a)==1||isnan(b)==1||isnan(f)==1||isnan(e)==1||isnan(u)==1
    warndlg('请输入数字','MATLAB warning')
else
    %检测是否为整数
    if round(m)~=m||round(n)~=n
        warndlg('m和n需是整数!','MATLAB warning')
    else
        A=1;                %幅值
        e=e*e0;             %波导中epsilon
        u=u*u0;             %波导中miu
        v=1/sqrt(e*u);      %波导中的相速度
        k=2*pi*f/v;         
        kc=sqrt((m*pi/a)^2+(n*pi/b)^2);%截止波数
        gamma=sqrt(k^2-kc^2); %传播常数
        fc0=v*kc/(2*pi);      %截止频率
 
        if f<fc0
            set(handles.fcvalue,'string',fc0/10^9);
            errordlg('低于截止频率!','MATLAB warning')
        else
            set(handles.fcvalue,'string',fc0/10^9);
            axes(handles.view)
            axis([0,a,0,b,0,0.05])
            [x,y,z]=meshgrid(0:a/10:a,0:b/10:b,0:0.01:0.05);
            %TE模式
            if mode0==1
                Hx=1i*gamma*m*pi/(kc^2*a)*A*sin(m*pi*x./a).*cos(n*pi*y./b).*exp(-1i*gamma*z);
                Hy=1i*gamma*n*pi/(kc^2*b)*A*cos(m*pi*x./a).*sin(n*pi*y./b).*exp(-1i*gamma*z);
                Hz=A*cos(m*pi*x./a).*cos(n*pi*y./b).*exp(-1i*gamma*z);
                
                Ex=1i*2*pi*f*u*n*pi/(kc^2*b)*A*cos(m*pi*x./a).*sin(n*pi*y./b).*exp(-1i*gamma*z);
                Ey=-1i*2*pi*f*u*m*pi/(kc^2*a)*A*sin(m*pi*x./a).*cos(n*pi*y./b).*exp(-1i*gamma*z);
                Ez=zeros(size(Ex));
                
                if mode1==1
                    [verts, averts]=streamslice(x,y,z,Hx,Hy,Hz,a,b,0.05); %绘出H场线
                    h1=streamline([verts averts]);
                    
                    set(h1,'color','r');
                    hold on;
                    
                    [verts, averts]=streamslice(x,y,z,Ex,Ey,Ez,a,b,0.05); %绘出E场线
                    h2=streamline([verts averts]);
                    set(h2,'color','b');
                    hold off;
                    box on
                    view(120,30);
                elseif mode1==2
                    [verts, averts]=streamslice(x,y,z,Hx,Hy,Hz,a,b,0.05);
                    h1=streamline([verts averts]);
                    set(h1,'color','r');
                else
                    [verts, averts]=streamslice(x,y,z,Ex,Ey,Ez,a,b,0.05);
                    h2=streamline([verts averts]);
                    set(h2,'color','b');
                end
                
                    
            %TM模式        
            else
                Hx=1i*2*pi*f*e/(kc^2)*n*pi/b*A*sin(m*pi*x./a).*cos(n*pi*y./b).*exp(-1i*gamma*z);
                Hy=-1i*2*pi*f*e/(kc^2)*m*pi/a*A*cos(m*pi*x./a).*sin(n*pi*y./b).*exp(-1i*gamma*z);
                Hz=zeros(size(Hy));
                
                Ez=A*sin(m*pi/a*x).*sin(n*pi/b*y).*exp(-1i*gamma*z);
                Ex=-1i*gamma/(kc^2)*m*pi/a*A*cos(m*pi*x./a).*sin(n*pi*y./b).*exp(-1i*gamma*z);
                Ey=-1i*gamma/(kc^2)*n*pi/b*A*sin(m*pi*x./a).*cos(n*pi*y./b).*exp(-1i*gamma*z);
                
                if mode1==1
                    [verts,averts]=streamslice(x,y,z,Hx,Hy,Hz,a,b,0.05);
                    h1=streamline([verts averts]);
                    
                    set(h1,'color','r');
                    hold on;
                    [verts,averts]=streamslice(x,y,z,Ex,Ey,Ez,a,b,0.05);
                    h2=streamline([verts averts]);
                    set(h2,'color','b');
                    hold off;
                    box on
                    view(120,30);
                elseif mode1==2
                    [verts,averts]=streamslice(x,y,z,Hx,Hy,Hz,a,b,0.05);
                    h1=streamline([verts averts]);
                    set(h1,'color','r');
                else
                    [verts,averts]=streamslice(x,y,z,Ex,Ey,Ez,a,b,0.05);
                    h2=streamline([verts averts]);
                    set(h2,'color','b');
                end
            end
                
        end
    end
end




  
        


function evalue_Callback(hObject, eventdata, handles)
% hObject    handle to evalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of evalue as text
%        str2double(get(hObject,'String')) returns contents of evalue as a double


% --- Executes during object creation, after setting all properties.
function evalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to evalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function uvalue_Callback(hObject, eventdata, handles)
% hObject    handle to uvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of uvalue as text
%        str2double(get(hObject,'String')) returns contents of uvalue as a double


% --- Executes during object creation, after setting all properties.
function uvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in mode1.
function mode1_Callback(hObject, eventdata, handles)
% hObject    handle to mode1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns mode1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mode1


% --- Executes during object creation, after setting all properties.
function mode1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mode1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mvalue1_Callback(hObject, eventdata, handles)
% hObject    handle to mvalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mvalue1 as text
%        str2double(get(hObject,'String')) returns contents of mvalue1 as a double


% --- Executes during object creation, after setting all properties.
function mvalue1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mvalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nvalue1_Callback(hObject, eventdata, handles)
% hObject    handle to nvalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nvalue1 as text
%        str2double(get(hObject,'String')) returns contents of nvalue1 as a double


% --- Executes during object creation, after setting all properties.
function nvalue1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nvalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function avalue1_Callback(hObject, eventdata, handles)
% hObject    handle to avalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of avalue1 as text
%        str2double(get(hObject,'String')) returns contents of avalue1 as a double


% --- Executes during object creation, after setting all properties.
function avalue1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to avalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function evalue1_Callback(hObject, eventdata, handles)
% hObject    handle to evalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of evalue1 as text
%        str2double(get(hObject,'String')) returns contents of evalue1 as a double


% --- Executes during object creation, after setting all properties.
function evalue1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to evalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function uvalue1_Callback(hObject, eventdata, handles)
% hObject    handle to uvalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of uvalue1 as text
%        str2double(get(hObject,'String')) returns contents of uvalue1 as a double


% --- Executes during object creation, after setting all properties.
function uvalue1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uvalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fvalue1_Callback(hObject, eventdata, handles)
% hObject    handle to fvalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fvalue1 as text
%        str2double(get(hObject,'String')) returns contents of fvalue1 as a double


% --- Executes during object creation, after setting all properties.
function fvalue1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fvalue1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Cset.
function Cset_Callback(hObject, eventdata, handles)
% hObject    handle to Cset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m = str2double(get(handles.mvalue1, 'String'));
n = str2double(get(handles.nvalue1, 'String'));
a = str2double(get(handles.avalue1, 'String'));
f = str2double(get(handles.fvalue1, 'String'))*10^9;
e = str2double(get(handles.evalue1, 'String'));
u = str2double(get(handles.uvalue1, 'String'));
mode=get(handles.mode1,'value');
mode1=get(handles.mode2,'value');
cla(handles.axes1);
axes(handles.axes1)


[I,map]=imread('Circle.GIF','frames','all');
for ii=1:size(I,4)
imagesc(I(:,:,:,ii));
colormap(map)
pause(0.1);
end

if isnan(m)==1||isnan(n)==1||isnan(a)==1||isnan(f)==1||isnan(e)==1||isnan(u)==1
    warndlg('请输入数字','MATLAB warning')
else
    if round(m)~=m||round(n)~=n
        warndlg('m和n需是整数','MATLAB warning')
    else
        maxv = 10;
        maxs = 10;
        p2= zeros(maxv, maxs);
        incr = 4.0;
        for v=0:maxv-1
            h = (v-1)+1.9*(v-1)^(1/3)+1;
            if (v==0)
                p2(v+1,1) = fzero(@(x)(besselj(v-1,x)-besselj(v+1,x)),3.5);
            else
                p2(v+1,1) = fzero(@(x)(besselj(v-1,x)-besselj(v+1,x)),h);
            end
            for s=2:maxs
                p2(v+1,s) = fzero(@(x)(besselj(v-1,x)-besselj(v+1,x)),p2(v+1,s-1)+incr);
            end
        end
        
        p1 = zeros(maxv, maxs);    % 贝塞尔函数的根
        incr = 4.0;
        for v=0:maxv-1
            h = v+1.9*v^(1/3)+1;
            if (v==0)             % 0阶贝塞尔函数的第一个零点
                p1(v+1,1) = fzero(@(x)besselj(v,x),2);
            else                  % 1阶及以上阶贝塞尔函数的第一个零点
                p1(v+1,1) = fzero(@(x)besselj(v,x),h);
            end
            for s=2:maxs          % 贝塞尔函数的第2-10的零点
                p1(v+1,s) = fzero(@(x)besselj(v,x),p1(v+1,s-1)+incr);
            end
        end
        
        %set(handles.pvalue2,'string',p2(n+1,m));
        %set(handles.pvalue1,'string',p1(n+1,m));

        e0=1/(36*pi)*10^(-9);
        u0=4*pi*10^(-7);
        e=e*e0;%波导中epsilon
        u=u*u0;%波导中miu
        v=1/sqrt(e*u);%波导中的相速度
        k=2*pi*f/v;
        kc=p2(n+1,m)/a;%截止波数
        gamma=sqrt(k^2-kc^2);%传播常数
        fc0=v*kc/(2*pi);%截止频率
        
        
        
        if f<fc0
            set(handles.fcvalue1,'string',fc0/10^9);
            errordlg('低于截止频率！','MATLAB warning')
        else
            set(handles.fcvalue1,'string',fc0/10^9);
            
            cla(handles.view);
            axes(handles.view);
            set(gca,'xtick',[],'ytick',[],'ztick',[],'color','none','xcolor',[.5 .5 .5],'ycolor',[.5 .5 .5],'zcolor',[.5 .5 .5]);
            axis([-a,a,-a,a,0,0.1])
            
            [x,y,z]=meshgrid(-a:a/30:a,-a:a/30:a,0:0.01:0.1);
            [theta,r,z]=cart2pol(x,y,z);%与极轴夹角，从y轴开始顺时针
            
            r(r>a)=NaN;
            
            if mode==1
                Er=-(1i*2*pi*f*u*n/((kc^2)*r)).*(cos(n*theta)-sin(n*theta)).*besselj(n,kc*r).*exp(-1i*gamma*z);
                Etheta=1i*2*pi*f*u/kc*(sin(n*theta)+cos(n*theta)).*(besselj(n-1,kc*r)-besselj(n+1,kc*r))/2.*exp(-1i*gamma*z);
                Hr=-1i*gamma/kc*(sin(n*theta)+cos(n*theta)).*(besselj(n-1,kc*r)-besselj(n+1,kc*r))/2.*exp(-1i*gamma*z);
                Htheta=-(1i*gamma*n/((kc^2)*r)).*(cos(n*theta)-sin(n*theta)).*besselj(n,kc*r).*exp(-1i*gamma*z);
                Hz=(cos(n*theta)+sin(n*theta)).*besselj(n,kc*r).*exp(-1i*gamma*z);
                Ez=zeros(size(Er));
                
                L=isnan(Hz);
                Hz(L==1)=0;
                L=isnan(Htheta);
                Htheta(L==1)=0;
                L=isnan(Hr);
                Hr(L==1)=0;
                L=isnan(Ez);
                Ez(L==1)=0;
                L=isnan(Etheta);
                Etheta(L==1)=0;
                L=isnan(Er);
                Er(L==1)=0;
                
                Hx=Hr.*sin(theta)+Htheta.*cos(theta);
                Hy=Hr.*cos(theta)-Htheta.*sin(theta);
                
                Ex=Er.*sin(theta)+Etheta.*cos(theta);
                Ey=Er.*cos(theta)-Etheta.*sin(theta);
                
                box off
                
                if mode1==1
                    [verts,averts]=streamslice(x,y,z,Hx,Hy,Hz,a/2,0,0.1);
                    h1=streamline([verts averts]);
                    set(h1,'color','r');
                    hold on;
                    [verts,averts]=streamslice(x,y,z,Ex,Ey,Ez,a/2,0,0.1);
                    streamline([verts averts]);
                    
                    view(-30,30);
                elseif mode1==2
                    [verts,averts]=streamslice(x,y,z,Hx,Hy,Hz,a/2,0,0.1);
                    h1=streamline([verts averts]);
                    set(h1,'color','r');
                else
                    [verts,averts]=streamslice(x,y,z,Ex,Ey,Ez,a/2,0,0.1);
                    streamline([verts averts]);
                end
                
            else
                Er=-1i*gamma/kc*(sin(n*theta)+cos(n*theta)).*(besselj(n-1,kc*r)-besselj(n+1,kc*r))/2.*exp(-1i*gamma*z);
                Etheta=-(1i*gamma*n./(kc^2*r)).*(cos(n*theta)-sin(n*theta)).*besselj(n,kc*r).*exp(-1i*gamma*z);
                Ez=(cos(n*theta)+sin(n*theta)).*besselj(n,kc*r).*exp(-1i*gamma*z);
                Hr=(1i*2*pi*f*e*n./(kc^2*r)).*(cos(n*theta)-sin(n*theta)).*besselj(n,kc*r).*exp(-1i*gamma*z);
                Htheta=-1i*2*pi*f*e/kc*(sin(n*theta)+cos(n*theta)).*(besselj(n-1,kc*r)-besselj(n+1,kc*r))/2.*exp(-1i*gamma*z);
                Hz=zeros(size(Hr));
                
                L=isnan(Hz);
                Hz(L==1)=0;
                L=isnan(Htheta);
                Htheta(L==1)=0;
                L=isnan(Hr);
                Hr(L==1)=0;
                L=isnan(Ez);
                Ez(L==1)=0;
                L=isnan(Etheta);
                Etheta(L==1)=0;
                L=isnan(Er);
                Er(L==1)=0;
                
                Hx=Hr.*sin(theta)+Htheta.*cos(theta);
                Hy=Hr.*cos(theta)-Htheta.*sin(theta);
                
                Ex=Er.*sin(theta)+Etheta.*cos(theta);
                Ey=Er.*cos(theta)-Etheta.*sin(theta);
                
                box off
                
                if mode1==1
                    [verts,averts]=streamslice(x,y,z,Hx,Hy,Hz,a/2,0,0.1);
                    h1=streamline([verts averts]);
                    set(h1,'color','r');
                    hold on;
                    [verts,averts]=streamslice(x,y,z,Ex,Ey,Ez,a/2,0,0.1);
                    streamline([verts averts]);
                    
                    view(-30,30);
                elseif mode1==2
                    [verts,averts]=streamslice(x,y,z,Hx,Hy,Hz,a/2,0,0.1);
                    h1=streamline([verts averts]);
                    set(h1,'color','r');
                else
                    [verts,averts]=streamslice(x,y,z,Ex,Ey,Ez,a/2,0,0.1);
                    streamline([verts averts]);
                end
                
            end
            
        end
    end
end


% --- Executes on selection change in mode2.
function mode2_Callback(hObject, eventdata, handles)
% hObject    handle to mode2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns mode2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mode2


% --- Executes during object creation, after setting all properties.
function mode2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mode2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
