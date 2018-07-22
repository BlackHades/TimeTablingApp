function varargout = GENERATED_TABLE(varargin)
% GENERATED_TABLE M-file for GENERATED_TABLE.fig
%      GENERATED_TABLE, by itself, creates a new GENERATED_TABLE or raises the existing
%      singleton*.
%
%      H = GENERATED_TABLE returns the handle to a new GENERATED_TABLE or the handle to
%      the existing singleton*.
%
%      GENERATED_TABLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GENERATED_TABLE.M with the given input arguments.
%
%      GENERATED_TABLE('Property','Value',...) creates a new GENERATED_TABLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GENERATED_TABLE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GENERATED_TABLE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GENERATED_TABLE

% Last Modified by GUIDE v2.5 24-Jun-2016 09:52:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GENERATED_TABLE_OpeningFcn, ...
                   'gui_OutputFcn',  @GENERATED_TABLE_OutputFcn, ...
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


% --- Executes just before GENERATED_TABLE is made visible.
function GENERATED_TABLE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GENERATED_TABLE (see VARARGIN)
clc
% delete('mydata.mat')
% Choose default command line output for GENERATED_TABLE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GENERATED_TABLE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GENERATED_TABLE_OutputFcn(hObject, eventdata, handles) 
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
close(gcf)
DATA_INTERFACE


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('mydata.mat')
BIO = BGY;
CHEM = CHM;
COM = CSC;
GE = GEO;
PH = PHY;
f = courses;
b=timeslots;
n=venues;
cs = size(courses,1);
Bcs=size(BIO,1);
Pcs = size(PH,1);
CHcs = size(CHEM,1);
GEcs = size(GE,1);
CScs = size(COM,1);
vs=size(venues,1);
ts=size(timeslots,1);
% [a,b]=xlsread('timeslotss');
% [g,f]=xlsread('courses');
% [m,n]=xlsread('venues');
p=b(1:1,2:11);
ra=randperm(vs);
ra1=randperm(vs);
ra2=randperm(vs);
ra3=randperm(vs);
ra4=randperm(vs);
ra5=randperm(vs);
ra6=randperm(vs);
ra7=randperm(vs);
ra8=randperm(vs);
ra9=randperm(vs);
% biology
rannd=randperm(Bcs);
rannd1=randperm(Bcs);
rannd2=randperm(Bcs);
rannd3=randperm(Bcs);
rannd4=randperm(Bcs);
rannd5=randperm(Bcs);
rannd6=randperm(Bcs);
rannd7=randperm(Bcs);
rannd8=randperm(Bcs);
rannd9=randperm(Bcs);
% Physics
Prannd=randperm(Pcs);
Prannd1=randperm(Pcs);
Prannd2=randperm(Pcs);
Prannd3=randperm(Pcs);
Prannd4=randperm(Pcs);
Prannd5=randperm(Pcs);
Prannd6=randperm(Pcs);
Prannd7=randperm(Pcs);
Prannd8=randperm(Pcs);
Prannd9=randperm(Pcs);
% Chemical
CHrannd=randperm(CHcs);
CHrannd1=randperm(CHcs);
CHrannd2=randperm(CHcs);
CHrannd3=randperm(CHcs);
CHrannd4=randperm(CHcs);
CHrannd5=randperm(CHcs);
CHrannd6=randperm(CHcs);
CHrannd7=randperm(CHcs);
CHrannd8=randperm(CHcs);
CHrannd9=randperm(CHcs);

% GE
Grannd=randperm(GEcs);
Grannd1=randperm(GEcs);
Grannd2=randperm(GEcs);
Grannd3=randperm(GEcs);
Grannd4=randperm(GEcs);
Grannd5=randperm(GEcs);
Grannd6=randperm(GEcs);
Grannd7=randperm(GEcs);
Grannd8=randperm(GEcs);
Grannd9=randperm(GEcs);

% CSC
CSrannd=randperm(CScs);
CSrannd1=randperm(CScs);
CSrannd2=randperm(CScs);
CSrannd3=randperm(CScs);
CSrannd4=randperm(CScs);
CSrannd5=randperm(CScs);
CSrannd6=randperm(CScs);
CSrannd7=randperm(CScs);
CSrannd8=randperm(CScs);
CSrannd9=randperm(CScs);

Monday=['DAYS/TIME' p; b(1) b(1) b(1) b(1) b(1) b(1) b(1) b(1) b(1) b(1) b(1)]
Bio = ['BIOLOGY' BIO(rannd(1))' BIO(rannd1(1))' BIO(rannd2(1))' BIO(rannd3(1))' BIO(rannd4(1))' BIO(rannd5(1))' 'BREAK' BIO(rannd7(1))' BIO(rannd8(1))' BIO(rannd9(1))'];
Chem = ['CHEMICAL SCI.' CHEM(CHrannd(1))' CHEM(CHrannd1(1))' CHEM(CHrannd1(1))' CHEM(CHrannd3(1))' CHEM(CHrannd4(1))' CHEM(CHrannd5(1))' 'BREAK' CHEM(CHrannd7(1))' CHEM(CHrannd8(1))' CHEM(CHrannd9(1))'];
Csc = ['COMP. SCI.' COM(CSrannd(1))' COM(CSrannd1(1))' COM(CSrannd1(1))' COM(CSrannd3(1))' COM(CSrannd4(1))' COM(CSrannd5(1))' 'BREAK' COM(CSrannd7(1))' COM(CSrannd8(1))' COM(CSrannd9(1))'];
Geo = ['GEOLOGY' GE(Grannd(1))' GE(Grannd1(1))' GE(Grannd1(1))' GE(Grannd3(1))' GE(Grannd4(1))' GE(Grannd5(1))' 'BREAK' GE(Grannd7(1))' GE(Grannd8(1))' GE(Grannd9(1))'];
Phy = ['PHYSICS' PH(Prannd(1))' PH(Prannd1(1))' PH(Prannd1(1))' PH(Prannd3(1))' PH(Prannd4(1))' PH(Prannd5(1))' 'BREAK' PH(Prannd7(1))' PH(Prannd8(1))' PH(Prannd9(1))'];

Tuesday= {'TUESDAY' 'TUESDAY' 'TUESDAY' 'TUESDAY' 'TUESDAY' 'TUESDAY' 'TUESDAY' 'TUESDAY' 'TUESDAY' 'TUESDAY' 'TUESDAY'};
BioT = ['BIOLOGY' BIO(rannd(2))' BIO(rannd1(2))' BIO(rannd2(2))' BIO(rannd3(2))' BIO(rannd4(2))' BIO(rannd5(2))' 'BREAK' BIO(rannd7(2))' BIO(rannd8(2))' BIO(rannd9(2))'];
ChemT =['CHEMICAL SCI.' CHEM(CHrannd(2))' CHEM(CHrannd1(2))' CHEM(CHrannd2(2))' CHEM(CHrannd3(2))' CHEM(CHrannd4(2))' CHEM(CHrannd5(2))' 'BREAK' CHEM(CHrannd7(2))' CHEM(CHrannd8(2))' CHEM(CHrannd9(2))'];
CscT = ['COMP. SCI.' COM(CSrannd(2))' COM(CSrannd1(2))' COM(CSrannd2(2))' COM(CSrannd3(2))' COM(CSrannd4(2))' COM(CSrannd5(2))' 'BREAK' COM(CSrannd7(2))' COM(CSrannd8(2))' COM(CSrannd9(2))'];
GeoT = ['GEOLOGY' GE(Grannd(2))' GE(Grannd1(2))' GE(Grannd2(2))' GE(Grannd3(2))' GE(Grannd4(2))' GE(Grannd5(2))' 'BREAK' GE(Grannd7(2))' GE(Grannd8(2))' GE(Grannd9(2))'];
PhyT = ['PHYSICS' PH(Prannd(2))' PH(Prannd1(2))' PH(Prannd2(2))' PH(Prannd3(2))' PH(Prannd4(2))' PH(Prannd5(2))' 'BREAK' PH(Prannd7(2))' PH(Prannd8(2))' PH(Prannd9(2))'];

b = 'WEDNESDAY';
Wed ={ b b b b b b b b b b b}
BioW = ['BIOLOGY' BIO(rannd(3))' BIO(rannd1(3))' BIO(rannd2(3))' BIO(rannd3(3))' BIO(rannd4(3))' BIO(rannd5(3))' 'BREAK' BIO(rannd7(3))' BIO(rannd8(3))' BIO(rannd9(3))'];
ChemW = ['CHEMICAL SCI.' CHEM(CHrannd(3))' CHEM(CHrannd1(3))' CHEM(CHrannd2(3))' CHEM(CHrannd3(3))' CHEM(CHrannd4(3))' CHEM(CHrannd5(3))' 'BREAK' CHEM(CHrannd7(3))' CHEM(CHrannd8(3))' CHEM(CHrannd9(3))'];
CscW = ['COMPUTER SCI.' COM(CSrannd(3))' COM(CSrannd1(3))' COM(CSrannd2(3))' COM(CSrannd3(3))' COM(CSrannd4(3))' COM(CSrannd5(3))' 'BREAK' COM(CSrannd7(3))' COM(CSrannd8(3))' COM(CSrannd9(3))'];
GeoW = ['GEOLOGY' GE(Grannd(3))' GE(Grannd1(3))' GE(Grannd2(3))' GE(Grannd3(3))' GE(Grannd4(3))' GE(Grannd5(3))' 'BREAK' GE(Grannd7(3))' GE(Grannd8(3))' GE(Grannd9(3))'];
PhyW = ['PHYSICS' PH(Prannd(3))' PH(Prannd1(3))' PH(Prannd2(3))' PH(Prannd3(3))' PH(Prannd4(3))' PH(Prannd5(3))' 'BREAK' PH(Prannd7(3))' PH(Prannd8(3))' PH(Prannd9(3))'];

b = 'THURSDAY';
Thur={ b b b b b b b b b b b};
BioTH = ['BIOLOGY' BIO(rannd(4))' BIO(rannd1(4))' BIO(rannd2(4))' BIO(rannd3(4))' BIO(rannd4(4))' BIO(rannd5(4))' 'BREAK' BIO(rannd7(4))' BIO(rannd8(4))' BIO(rannd9(4))'];
ChemTH = ['CHEMICAL SCI..' CHEM(CHrannd(4))' CHEM(CHrannd1(4))' CHEM(CHrannd2(4))' CHEM(CHrannd3(4))' CHEM(CHrannd4(4))' CHEM(CHrannd5(4))' 'BREAK' CHEM(CHrannd7(4))' CHEM(CHrannd8(4))' CHEM(CHrannd9(4))'];
CscTH = ['Comp Sci.' COM(CSrannd(4))' COM(CSrannd1(4))' COM(CSrannd2(4))' COM(CSrannd3(4))' COM(CSrannd4(4))' COM(CSrannd5(4))' 'BREAK' COM(CSrannd7(4))' COM(CSrannd8(4))' COM(CSrannd9(4))'];
GeoTH = ['Geology' GE(Grannd(4))' GE(Grannd1(4))' GE(Grannd2(4))' GE(Grannd3(4))' GE(Grannd4(4))' GE(Grannd5(4))' 'BREAK' GE(Grannd7(4))' GE(Grannd8(4))' GE(Grannd9(4))'];
PhyTH = ['Physics' PH(Prannd(4))' PH(Prannd1(4))' PH(Prannd2(4))' PH(Prannd3(4))' PH(Prannd4(4))' PH(Prannd5(4))' 'BREAK' PH(Prannd7(4))' PH(Prannd8(4))' PH(Prannd9(4))'];

b = 'FRIDAY';
Fri={ b b b b b b b b b b b}
BioF = ['Biology' BIO(rannd(5))' BIO(rannd1(5))' BIO(rannd2(5))' BIO(rannd3(5))' BIO(rannd4(5))' BIO(rannd5(5))' 'BREAK' BIO(rannd7(5))' BIO(rannd8(5))' BIO(rannd9(5))'];
ChemF = ['Chemical Sci.' CHEM(CHrannd(5))' CHEM(CHrannd1(5))' CHEM(CHrannd2(5))' CHEM(CHrannd3(5))' CHEM(CHrannd4(5))' CHEM(CHrannd5(5))' 'BREAK' CHEM(CHrannd7(5))' CHEM(CHrannd8(5))' CHEM(CHrannd9(5))'];
CscF = ['Comp Sci.' COM(CSrannd(5))' COM(CSrannd1(5))' COM(CSrannd2(5))' COM(CSrannd3(5))' COM(CSrannd4(5))' COM(CSrannd5(5))' 'BREAK' COM(CSrannd7(5))' COM(CSrannd8(5))' COM(CSrannd9(5))'];
GeoF = ['Geology' GE(Grannd(5))' GE(Grannd1(5))' GE(Grannd2(5))' GE(Grannd3(5))' GE(Grannd4(5))' GE(Grannd5(5))' 'BREAK' GE(Grannd7(5))' GE(Grannd8(5))' GE(Grannd9(5))'];
PhyF = ['Physics' PH(Prannd(5))' PH(Prannd1(5))' PH(Prannd2(5))' PH(Prannd3(5))' PH(Prannd4(5))' PH(Prannd5(5))' 'BREAK' PH(Prannd7(5))' PH(Prannd8(5))' PH(Prannd9(5))'];

BV1=['Venue' n(ra(1))' n(ra1(1))' n(ra2(1))' n(ra3(1))' n(ra4(1))' n(ra5(1))' 'BREAK' n(ra7(1))' n(ra8(1))' n(ra9(1))'];
BV2=['Venue' n(ra(2))' n(ra1(2))' n(ra2(2))' n(ra3(2))' n(ra4(2))' n(ra5(2))' 'BREAK' n(ra7(2))' n(ra8(2))' n(ra9(2))'];
BV3=['Venue' n(ra(3))' n(ra1(3))' n(ra2(3))' n(ra3(3))' n(ra4(3))' n(ra5(3))' 'BREAK' n(ra7(3))' n(ra8(3))' n(ra9(3))'];
BV4=['Venue' n(ra(4))' n(ra1(4))' n(ra2(4))' n(ra3(4))' n(ra4(4))' n(ra5(4))' 'BREAK' n(ra7(4))' n(ra8(4))' n(ra9(4))'];
BV5=['Venue' n(ra(5))' n(ra1(5))' n(ra2(5))' n(ra3(5))' n(ra4(5))' n(ra5(5))' 'BREAK' n(ra7(5))' n(ra8(5))' n(ra9(5))'];

CHV1 = ['Venue' n(ra(6))' n(ra1(6))' n(ra2(6))' n(ra3(6))' n(ra4(6))' n(ra5(6))' 'BREAK' n(ra7(6))' n(ra8(6))' n(ra9(6))'];
CHV2 = ['Venue' n(ra(7))' n(ra1(7))' n(ra2(7))' n(ra3(7))' n(ra4(7))' n(ra5(7))' 'BREAK' n(ra7(7))' n(ra8(7))' n(ra9(7))'];
CHV3 = ['Venue' n(ra(8))' n(ra1(8))' n(ra2(8))' n(ra3(8))' n(ra4(8))' n(ra5(8))' 'BREAK' n(ra7(8))' n(ra8(8))' n(ra9(8))'];
CHV4 = ['Venue' n(ra(9))' n(ra1(9))' n(ra2(9))' n(ra3(9))' n(ra4(9))' n(ra5(9))' 'BREAK' n(ra7(9))' n(ra8(9))' n(ra9(9))'];
CHV5 = ['Venue' n(ra(10))' n(ra1(10))' n(ra2(10))' n(ra3(10))' n(ra4(10))' n(ra5(10))' 'BREAK' n(ra7(10))' n(ra8(10))' n(ra9(10))'];

CSV1 = ['Venue' n(ra(11))' n(ra1(11))' n(ra2(11))' n(ra3(11))' n(ra4(11))' n(ra5(11))' 'BREAK' n(ra7(11))' n(ra8(11))' n(ra9(11))'];
CSV2 = ['Venue' n(ra(12))' n(ra1(12))' n(ra2(12))' n(ra3(12))' n(ra4(12))' n(ra5(12))' 'BREAK' n(ra7(12))' n(ra8(12))' n(ra9(12))'];
CSV3 = ['Venue' n(ra(13))' n(ra1(13))' n(ra2(13))' n(ra3(13))' n(ra4(13))' n(ra5(13))' 'BREAK' n(ra7(13))' n(ra8(13))' n(ra9(13))'];
CSV4 = ['Venue' n(ra(14))' n(ra1(14))' n(ra2(14))' n(ra3(14))' n(ra4(14))' n(ra5(14))' 'BREAK' n(ra7(14))' n(ra8(14))' n(ra9(14))'];
CSV5 = ['Venue' n(ra(15))' n(ra1(15))' n(ra2(15))' n(ra3(15))' n(ra4(15))' n(ra5(15))' 'BREAK' n(ra7(15))' n(ra8(15))' n(ra9(15))'];

GV1 = ['Venue' n(ra(16))' n(ra1(16))' n(ra2(16))' n(ra3(16))' n(ra4(16))' n(ra5(16))' 'BREAK' n(ra7(16))' n(ra8(16))' n(ra9(16))'];
GV2 = ['Venue' n(ra(17))' n(ra1(17))' n(ra2(17))' n(ra3(17))' n(ra4(17))' n(ra5(17))' 'BREAK' n(ra7(17))' n(ra8(17))' n(ra9(17))'];
GV3 = ['Venue' n(ra(18))' n(ra1(18))' n(ra2(18))' n(ra3(18))' n(ra4(18))' n(ra5(18))' 'BREAK' n(ra7(18))' n(ra8(18))' n(ra9(18))'];
GV4 = ['Venue' n(ra(19))' n(ra1(19))' n(ra2(19))' n(ra3(19))' n(ra4(19))' n(ra5(19))' 'BREAK' n(ra7(19))' n(ra8(19))' n(ra9(19))'];
GV5 = ['Venue' n(ra(1))' n(ra1(3))' n(ra2(5))' n(ra3(7))' n(ra4(9))' n(ra5(11))' 'BREAK' n(ra7(13))' n(ra8(15))' n(ra9(17))'];

PV1=['Venue' n(ra(2))' n(ra1(4))' n(ra2(6))' n(ra3(8))' n(ra4(10))' n(ra5(12))' 'BREAK' n(ra7(14))' n(ra8(16))' n(ra9(18))'];
PV2=['Venue' n(ra(1))' n(ra1(5))' n(ra2(10))' n(ra3(11))' n(ra4(15))' n(ra5(3))' 'BREAK' n(ra7(7))' n(ra8(9))' n(ra9(7))'];
PV3=['Venue' n(ra(3))' n(ra1(6))' n(ra2(9))' n(ra3(12))' n(ra4(15))' n(ra5(18))' 'BREAK' n(ra7(5))' n(ra8(8))' n(ra9(10))'];
PV4=['Venue' n(ra(10))' n(ra1(10))' n(ra2(10))' n(ra3(10))' n(ra4(10))' n(ra5(10))' 'BREAK' n(ra7(10))' n(ra8(10))' n(ra9(10))'];
PV5=['Venue' n(ra(2))' n(ra1(5))' n(ra2(8))' n(ra3(11))' n(ra4(14))' n(ra5(17))' 'BREAK' n(ra7(14))' n(ra8(12))' n(ra9(10))'];

% k3=[' ' n(ra(14))' n(ra1(14))' n(ra2(14))' n(ra3(14))' n(ra4(14))' n(ra5(14))' 'BREAK' n(ra7(14))' n(ra8(14))' n(ra9(14))'];
% thk=[' ' n(ra(16))' n(ra1(16))' n(ra2(16))' n(ra3(16))' n(ra4(16))' n(ra5(16))' 'BREAK' n(ra7(16))' n(ra8(16))' n(ra9(16))'];
% k4=[' ' n(ra(18))' n(ra1(18))' n(ra2(18))' n(ra3(18))' n(ra4(18))' n(ra5(18))' 'BREAK' n(ra7(18))' n(ra8(18))' n(ra9(18))' ];
% fk=[' ' n(ra(20))' n(ra1(20))' n(ra2(20))' n(ra3(20))' n(ra4(20))' n(ra5(20))' 'BREAK' n(ra7(20))' n(ra8(20))' n(ra9(20))' ];

% out=[Monday;k;Monday1;mk;Tuesday;k1;Tuesday1;tk;Wednesday;k2;Wednesday1;wk;Thursday;k3;Thursday1;thk;Friday;k4;Friday1;fk];
out = [Monday;Bio;BV1;Chem;CHV1;Csc;CSV1;Geo;GV1;Phy;PV1;Tuesday;BioT;BV2;ChemT;CHV2;CscT;CSV2;GeoT;GV2;PhyT;PV2;Wed;BioW;BV3;ChemW;CHV3;CscW;CSV3;GeoW;GV3;PhyW;PV3;Thur;BioTH;BV4;ChemTH;CHV4;CscTH;CSV4;GeoTH;GV4;PhyTH;PV4;Fri;BioF;BV5;ChemF;CHV5;CscF;CSV5;GeoF;GV5;PhyF;PV5;];
set(handles.uitable1,'data',out);
