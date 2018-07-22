function varargout = DATA_INTERFACE(varargin)
% DATA_INTERFACE M-file for DATA_INTERFACE.fig
%      DATA_INTERFACE, by itself, creates a new DATA_INTERFACE or raises the existing
%      singleton*.
%
%      H = DATA_INTERFACE returns the handle to a new DATA_INTERFACE or the handle to
%      the existing singleton*.
%
%      DATA_INTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATA_INTERFACE.M with the given input arguments.
%
%      DATA_INTERFACE('Property','Value',...) creates a new DATA_INTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DATA_INTERFACE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DATA_INTERFACE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DATA_INTERFACE

% Last Modified by GUIDE v2.5 24-Jun-2016 09:48:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DATA_INTERFACE_OpeningFcn, ...
                   'gui_OutputFcn',  @DATA_INTERFACE_OutputFcn, ...
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


% --- Executes just before DATA_INTERFACE is made visible.
function DATA_INTERFACE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DATA_INTERFACE (see VARARGIN)

% Choose default command line output for DATA_INTERFACE
handles.output = hObject;
clc
clear global courses
addpath('./Excel');
set(handles.pushbutton7,'enable','off');
set(handles.pushbutton8,'enable','off');
set(handles.pushbutton9,'enable','off');
set(handles.pushbutton10,'enable','off');
set(handles.pushbutton3,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DATA_INTERFACE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DATA_INTERFACE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf)
START_UP

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global courses venues timeslots BGY PHY CSC CHM GEO
load courses
% save('mydata','courses','venues','timeslots');
% save courses 
% save venues 
% save timeslots
% close(gcf)
save('mydata','courses','venues','timeslots','BGY','PHY','CSC','CHM','GEO');
GENERATED_TABLE


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global PHY
load courses
[filename, pathname] = uigetfile('*.xls;*.xlsx', 'Select an excel file');
[numericdata,PHY]=xlsread(filename);
if(isempty(courses)== 1)
    courses = [[] PHY];
else
    courses = [courses; PHY];
end
set(handles.uitable2,'data',courses);
save courses


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDAT
clear courses
set(handles.pushbutton7,'enable','on');
% global courses
% [filename, pathname] = uigetfile('*.xls;*.xlsx', 'Select an excel file');
% [numericdata,courses]=xlsread(filename);
% set(handles.uitable2,'data',courses);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% venues = uigetfile('*.xls', 'Select an excel file')
global venues
[filename, pathname] = uigetfile('*.xls;*.xlsx', 'Select an excel file');
[numericdata,venues]=xlsread(filename);
set(handles.uitable1,'data',venues);
 venues

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global  BGY
clear courses
[filename, pathname] = uigetfile('*.xls;*.xlsx', 'Select an excel file');
[numericdata,BGY]=xlsread(filename);
if(isempty(BGY)== 1)
    courses = [[] BGY];
else
    courses = BGY;
end
set(handles.uitable2,'data',courses);
set(handles.pushbutton8,'enable','on');
save courses

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDAT
global CHM
load courses
[filename, pathname] = uigetfile('*.xls;*.xlsx', 'Select an excel file');
[numericdata,CHM]=xlsread(filename);
if(isempty(courses)== 1)
    courses = [[] CHM];
else
    courses = [courses;CHM];
end
set(handles.uitable2,'data',courses);
set(handles.pushbutton9,'enable','on');
save courses

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global CSC
load courses
[filename, pathname] = uigetfile('*.xls;*.xlsx', 'Select an excel file');
[numericdata,CSC]=xlsread(filename);
if(isempty(courses)== 1)
    courses = [[] CSC];
else
    courses = [courses; CSC];
end
set(handles.uitable2,'data',courses);
set(handles.pushbutton10,'enable','on');
set(hObject,'enable','off');
save courses
% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global GEO
load courses
[filename, pathname] = uigetfile('*.xls;*.xlsx', 'Select an excel file');
[numericdata,GEO]=xlsread(filename);
if(isempty(courses)== 1)
    courses = [[] GEO];
else
    courses = [courses;GEO];
end
set(handles.uitable2,'data',courses);
set(handles.pushbutton3,'enable','on');
set(hObject,'enable','off');
save courses

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global timeslots
[filename, pathname] = uigetfile('*.xls;*.xlsx', 'Select an excel file');
[numericdata,timeslots]=xlsread(filename);
set(handles.uitable3,'data',timeslots);

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global venues
[filename, pathname] = uigetfile('*.xls;*.xlsx', 'Select an excel file');
[numericdata,venues]=xlsread(filename);
set(handles.uitable1,'data',venues);
%  BGY
%  CHM
%  CSC
%  GEO
%  PHY
