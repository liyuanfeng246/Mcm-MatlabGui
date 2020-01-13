function varargout = mcm(varargin)
% MCM MATLAB code for mcm.fig
%      MCM, by itself, creates a new MCM or raises the existing
%      singleton*.
%
%      H = MCM returns the handle to a new MCM or the handle to
%      the existing singleton*.
%
%      MCM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MCM.M with the given input arguments.
%
%      MCM('Property','Value',...) creates a new MCM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mcm_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mcm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mcm

% Last Modified by GUIDE v2.5 12-Jan-2020 11:07:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mcm_OpeningFcn, ...
                   'gui_OutputFcn',  @mcm_OutputFcn, ...
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


% --- Executes just before mcm is made visible.
function mcm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mcm (see VARARGIN)

% Choose default command line output for mcm
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mcm wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mcm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global choice
choice=1
set(handles.text3,'string','最小值')
set(handles.text4,'string','最大值')
set(handles.text5,'string','')
set(handles.edit1,'string','')
set(handles.edit2,'string','')
set(handles.edit3,'string','')
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global choice
choice=2
set(handles.text3,'string','平均值')
set(handles.text4,'string','标准差')
set(handles.text5,'string','')
set(handles.edit1,'string','')
set(handles.edit2,'string','')
set(handles.edit3,'string','')
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global choice
choice=3
set(handles.text3,'string','最小值')
set(handles.text4,'string','最可能的值')
set(handles.text5,'string','最大值')
set(handles.edit1,'string','')
set(handles.edit2,'string','')
set(handles.edit3,'string','')
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


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global uniformmin
global uniformmax
global normalmean
global normalstd
global trimin
global trimost
global trimax
Nuniform=length(uniformmin)
Nnormal=length(normalmean)
Ntri=length(trimin)
edit4str=get(handles.edit4,'string')
edit5str=get(handles.edit5,'string')
N=str2num(edit5str)
for a1=1:Nuniform
    eval(['uniformmin',num2str(a1),'=num2str(uniformmin(1,a1))'])
    a1=a1+1
end
for a2=1:Nuniform
    eval(['uniformmax',num2str(a2),'=num2str(uniformmax(1,a2))'])
    a2=a2+1
end
for a3=1:Nnormal
    eval(['normalmean',num2str(a3),'=num2str(normalmean(1,a3))'])
    a3=a3+1
end
for a4=1:Nnormal
    eval(['normalstd',num2str(a4),'=num2str(normalstd(1,a4))'])
    a4=a4+1
end
for a5=1:Ntri
    eval(['trimin',num2str(a5),'=num2str(trimin(1,a5))'])
    a5=a5+1
end
for a6=1:Ntri
    eval(['trimost',num2str(a6),'=num2str(trimost(1,a6))'])
    a6=a6+1
end
for a7=1:Ntri
    eval(['trimax',num2str(a7),'=num2str(trimax(1,a7))'])
    a7=a7+1
end
for b1=1:Nuniform
    c=str2num(eval(['uniformmin',num2str(b1)]))
    C=str2num(eval(['uniformmax',num2str(b1)]))
    eval(['x',num2str(b1),'=random(''Uniform'',c,C,N,1)'])
    b1=b1+1
end
B1=Nnormal+b1-1
for b2=b1:B1
    c=str2num(eval(['normalmean',num2str(b2-b1+1)]))
    C=str2num(eval(['normalstd',num2str(b2-b1+1)]))
    eval(['x',num2str(b2),'=random(''Normal'',c,C,N,1)'])
    b2=b2+1
end
B2=Ntri+b2-1
for b3=b2:B2
    c=str2num(eval(['trimin',num2str(b3-b2+1)]))
    cc=str2num(eval(['trimost',num2str(b3-b2+1)]))
    C=str2num(eval(['trimax',num2str(b3-b2+1)]))
    eval(['x',num2str(b3),'=random(makedist(''Triangular'',''a'',c,''b'',cc,''c'',C),N,1)'])
    b3=b3+1
end
global y
y=eval(edit4str)
ymean=mean(y)
ystd=std(y,1)
y95=prctile(y,[2.5,97.5])
set(handles.text9,'string',num2str(ymean))
set(handles.text11,'string',num2str(ystd))
set(handles.text13,'string',num2str(y95))
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y
Nhist(y)

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global uniformmin
global uniformmax
global normalmean
global normalstd
global trimin
global trimost
global trimax
edit1str=get(handles.edit1,'string')
edit2str=get(handles.edit2,'string')
edit3str=get(handles.edit3,'string')
global choice
if choice==1
    uniformmin=[uniformmin,str2double(edit1str)]
    uniformmax=[uniformmax,str2double(edit2str)]
end
if choice==2
    normalmean=[normalmean,str2double(edit1str)]
    normalstd=[normalstd,str2double(edit2str)]
end
if choice==3
    trimin=[trimin,str2double(edit1str)]
    trimost=[trimost,str2double(edit2str)]
    trimax=[trimax,str2double(edit3str)]
end
set(handles.text3,'string','')
set(handles.text4,'string','')
set(handles.text5,'string','')
set(handles.edit1,'string','')
set(handles.edit2,'string','')
set(handles.edit3,'string','')
