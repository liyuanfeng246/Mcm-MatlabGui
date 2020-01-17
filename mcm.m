function varargout = mcm(varargin)
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

function mcm_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = mcm_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function listbox1_Callback(hObject, eventdata, handles)

function listbox1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit5_Callback(hObject, eventdata, handles)

function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)
global choice
choice=1
set(handles.text3,'string','最小值')
set(handles.text4,'string','最大值')
set(handles.text5,'string','')
set(handles.edit1,'string','')
set(handles.edit2,'string','')
set(handles.edit3,'string','')

function pushbutton2_Callback(hObject, eventdata, handles)
global choice
choice=2
set(handles.text3,'string','平均值')
set(handles.text4,'string','标准差')
set(handles.text5,'string','')
set(handles.edit1,'string','')
set(handles.edit2,'string','')
set(handles.edit3,'string','')

function pushbutton3_Callback(hObject, eventdata, handles)
global choice
choice=3
set(handles.text3,'string','最小值')
set(handles.text4,'string','最可能的值')
set(handles.text5,'string','最大值')
set(handles.edit1,'string','')
set(handles.edit2,'string','')
set(handles.edit3,'string','')

function pushbutton4_Callback(hObject, eventdata, handles)
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

function pushbutton5_Callback(hObject, eventdata, handles)
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

function pushbutton6_Callback(hObject, eventdata, handles)
global y
Nhist(y)