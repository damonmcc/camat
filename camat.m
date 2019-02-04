function varargout = camat(varargin)
% CAMAT MATLAB code for camat.fig
%      CAMAT, by itself, creates a new CAMAT or raises the existing
%      singleton*.
%
%      H = CAMAT returns the handle to a new CAMAT or the handle to
%      the existing singleton*.
%
%      CAMAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CAMAT.M with the given input arguments.
%
%      CAMAT('Property','Value',...) creates a new CAMAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before camat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to camat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help camat

% Last Modified by GUIDE v2.5 28-Jan-2019 15:23:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @camat_OpeningFcn, ...
                   'gui_OutputFcn',  @camat_OutputFcn, ...
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

% --- Executes just before camat is made visible.
function camat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to camat (see VARARGIN)

% Choose default command line output for camat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = camat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
% varargout{1} = handles.results;


% UIWAIT makes camat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

function editVmRegR_Callback(hObject, eventdata, handles)
% Px Radius for Voltage Region

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on slider movement. THRESHOLD PEAK DETECTOR SLIDER
function sliderThreshold_Callback(hObject, eventdata, handles)
handles.editThreshold.Value=get(handles.sliderThreshold,'Value');
handles.editThreshold.String=num2str(get(handles.sliderThreshold,'Value'));
% hObject    handle to sliderThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderThreshold_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement. LOCKOUT PEAK DETECTOR SLIDER
function sliderLockout_Callback(hObject, eventdata, handles)
val=round(get(handles.sliderLockout,'Value'));
handles.sliderLockout.Value=val;

handles.editLockout.Value=val;
handles.editLockout.String=num2str(val);
% hObject    handle to sliderLockout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderLockout_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderLockout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editThreshold_Callback(hObject, eventdata, handles)
handles.sliderThreshold.Value=str2double(get(handles.editThreshold,'String'));
% hObject    handle to editThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editThreshold as text
%        str2double(get(hObject,'String')) returns contents of editThreshold as a double


% --- Executes during object creation, after setting all properties.
function editThreshold_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editLockout_Callback(hObject, eventdata, handles)
handles.sliderLockout.Value=str2double(get(handles.editLockout,'String'));
handles.editLockout.Value=str2double(get(handles.editLockout,'String'));
% hObject    handle to editLockout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLockout as text
%        str2double(get(hObject,'String')) returns contents of editLockout as a double


% --- Executes during object creation, after setting all properties.
function editLockout_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLockout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5



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



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function filemenu_Callback(hObject, eventdata, handles)
% hObject    handle to filemenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function imstd=menuImportZeiss_Callback(hObject, eventdata, handles)
[data,dt,fname]=lsmopen;
imstd=zeros(size(data,1),size(data,2));                                                                                                                 
for i=1:size(data,1)                                                
    % In each column of each row
    for j=1:size(data,2)                                                                                                                                   
    % That point equals the standard deviation of all the frames in that same column and row index
    imstd(i,j)=std(data(i,j,:));                                                                                                                         
    end
end
axes(handles.axes3) 
hold off
imagesc(imstd);
axis image;
axis off;

fps=1/dt;

set(handles.text23,'String',num2str(dt));
set(handles.text24,'String',num2str(1/dt));
set(handles.textFilename,'String',fname);

handles.imstd=imstd;
handles.data=data;
handles.dt=dt;
handles.fps=fps;
guidata(hObject,handles)

return

% --- Executes on button press in pushbuttonCaRegPick.
function pushbuttonCaRegPick_Callback(hObject, eventdata, handles)
    [gr,gc]=find(handles.imstd>0);
    [pc,pr]=ginput(1);                                                                                                                                 
    pc=round(pc);                                                                                                                                       
    pr=round(pr);

    % update text boxes
    set(handles.editCaRegX,'String',num2str(pc));
    set(handles.editCaRegY,'String',num2str(pr));

    % output needed vars  
    handles.gr=gr;
    handles.gc=gc;
    guidata(hObject,handles);


% --- Executes on button press in pushbuttonVmRegPick.
function pushbuttonVmRegPick_Callback(hObject, eventdata, handles)
    [gr,gc]=find(handles.imstd>0);
    [pc,pr]=ginput(1);                                                                                                                                 
    pc=round(pc);                                                                                                                                       
    pr=round(pr);

    % update text boxes
    set(handles.editVmRegX,'String',num2str(pc));
    set(handles.editVmRegY,'String',num2str(pr));

    % output needed vars  
    handles.gr=gr;
    handles.gc=gc;
    guidata(hObject,handles);


%% --- Executes on button press in Region Selector OK button CALCIUM
function pushbuttonCaRegOK_Callback(hObject, eventdata, handles)
    data=handles.data;
    imstd=handles.imstd;
    gr=handles.gr;
    gc=handles.gc;
    pr=str2double(handles.editCaRegY.String);
    pc=str2double(handles.editCaRegX.String);
    dt=handles.dt;
    maxrad=str2double(handles.editCaRegR.String);
    dto=str2double(handles.editCaRegDetrend.String); %detrend polynomial order
    dt_enable = get(handles.checkboxCaRegDetrend, 'Value'); % check if detrending is enabled.
    LPF_enable = get(handles.checkboxSmoothCal, 'Value'); % check if LPF is enabled
    Fc=str2double(handles.editSmoothCalHz.String); % Cutoff Frequency

    mode_selection = 1;

    [avesig,time,radi]=region(data,gr,gc,pr,pc,dt,maxrad,mode_selection); %region plotter
    avesig=double(avesig);

    if dt_enable == true
        opol=dto; %detrend polynomial order
        time=time';
        [p,~,mu] = polyfit(time(:),avesig(:),opol);
        fy=polyval(p,time(:),[],mu);
        d_calcium=avesig(:)-fy;
    else
        d_calcium=avesig; %skip detrending step
    end

    if LPF_enable == true
        Fs=1/dt;
        % % FIR 50th order Filtering
        % hb=100; %high band is 60 Hz
        % or=50; %50th order
        % a0=[1 1 0 0];
        % f0=[0 hb hb*1.25 Fs/2]./(Fs/2);
        % b = firpm(or,f0,a0);
        % a = 1;

        % IIR 5th order Butterworth  LPF
        n  = 5;    % Order
        Wn=(Fc/(Fs/2));
        [b,a] = butter(n,Wn);
        pre_calcium=filtfilt(b,a,d_calcium);
    else
        pre_calcium=d_calcium;% skip preprocessing step
    end

    calcium=double((pre_calcium-min(pre_calcium))/(max(pre_calcium)-min(pre_calcium))); %normalize

    axes(handles.axes1) 
    hold off
    plot(time,calcium);
    xlabel('Time (s)')
    ylabel('Fluorescence (AU)');
    xlim([0 max(time)])
    set(handles.radiobuttonFigureXTime,'Value',1);

    axes(handles.axes3)
    imagesc(imstd);
    hold on
    plot(gc(radi), gr(radi), 'k.');
    axis image

    % Exporting variables
    handles.time=time;
    handles.calcium=calcium;
    handles.avesig = avesig;
    guidata(hObject,handles);


% --- Executes on button press in radiobuttonFigureXTime. TIME (SEC)
function radiobuttonFigureXTime_Callback(hObject, eventdata, handles)
avesig=handles.avesig;
dt=handles.dt;
time=(1:length(avesig))*dt;
axes(handles.axes1)
hold off
plot(time,avesig)
xlab='Time (s)';
xlabel(xlab)
ylabel('Fluorescence (AU)');
xlim([0 max(time)])
handles.time=time;
handles.xlab=xlab;
guidata(hObject,handles);

% --- Executes on button press in radiobuttonFigureXFrames. (FRAMES)
function radiobuttonFigureXFrames_Callback(hObject, eventdata, handles)
avesig=handles.avesig;
time=1:1:length(avesig);
axes(handles.axes1)
hold off
plot(time,avesig)
xlab='Frames';
xlabel(xlab)
ylabel('Fluorescence (AU)');
handles.time=time;
handles.xlab=xlab;
guidata(hObject,handles);

% --------------------------------------------------------------------
function Test_Callback(hObject, eventdata, handles)
% hObject    handle to Test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7



function editCaRegX_Callback(hObject, eventdata, handles)
% hObject    handle to editCaRegX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCaRegX as text
%        str2double(get(hObject,'String')) returns contents of editCaRegX as a double


% --- Executes during object creation, after setting all properties.
function editCaRegX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCaRegX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editCaRegY_Callback(hObject, eventdata, handles)
% hObject    handle to editCaRegY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCaRegY as text
%        str2double(get(hObject,'String')) returns contents of editCaRegY as a double


% --- Executes during object creation, after setting all properties.
function editCaRegY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCaRegY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function editCaRegR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCaRegR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Time Selector (Pick button).
function pushbutton5_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function menuImportZeiss_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menuImportZeiss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in Peak Detection Procedure.
function pushbuttonThresholdDetect_Callback(hObject, eventdata, handles)
    % What peaks should be detected?
    mode_selection = get(handles.popupmenuMode, 'Value');

    if mode_selection == 1
        disp('CANNOT Detect Peaks in DUAL mode')
        return
    elseif mode_selection == 3
        signal=handles.calcium;
        disp('Processing Ca...')
    elseif mode_selection == 2 % Voltage only
        signal=handles.voltage;
        disp('Processing Vm...')
    end

    time=handles.time;
    thres=handles.editThreshold.Value;
    mpd=round(handles.editLockout.Value);

    [num_peaks, locsa, upstroke_locs, t0_locs, depV, minimum, maximum, amp]=peak_detect(signal, thres, mpd);

    axes(handles.axes1)
    %hold off
    %plot(time,signal)
    %xlim([0 max(time)])
    %xlabel('Time (s)')
    %ylabel('Fluorescence (AU)');
    hold on
    baseline=linspace(minimum, minimum, length(time));
    % peakavg=linspace(maximum, maximum, length(time));
    plot(time,baseline,'b-','linewidth',1)
    % plot(time,peakavg,'m-','linewidth',1)
    plot(time,linspace(amp,amp,length(time)));
    hold off

    axes(handles.axes1)
    hold on
    plot(time(locsa),signal(locsa),'mo','Markersize',8,'MarkerFaceColor','m','MarkerEdgeColor','k');

    % Exporting data
    handles.text14.String=num2str(num_peaks);
    guidata(hObject,handles);
    disp('DONE processing')

% --- Executes on button press in pushbuttonProcessSingle.Processing GO. Main Loop Here
function summary=pushbuttonProcessSingle_Callback(hObject, eventdata, handles)

mode_selection = get(handles.popupmenuMode, 'Value');

if mode_selection ==  1 % Dual
    processCalcium(hObject, eventdata, handles)
    processVoltage(hObject, eventdata, handles)
elseif mode_selection == 2 % Voltage only
    processVoltage(hObject, eventdata, handles)
elseif mode_selection == 3 % Calcium only
    processCalcium(hObject, eventdata, handles)
end

function processCalcium(hObject, eventdata, handles)
% Loading in data
calcium=handles.calcium;
time=handles.time;
fps=handles.fps;
thres=handles.editThreshold.Value;
mpd=round(handles.editLockout.Value);
% Detect peaks in calcium signal
[num_peaks, locsa, upstroke_locs, t0_locs, depV, minimum, maximum, amp]=peak_detect(calcium, thres, mpd);
axes(handles.axes1)
hold on
% Proces the calcium signal
type=0; % for calcium
[CRtab,  CMtab]=process(locsa, upstroke_locs,t0_locs,depV,calcium,time,fps,minimum,maximum,type);
handles.CRtab=CRtab; % individual results for calcium
handles.CMtab=CMtab; % mean results row for calcium
guidata(hObject,handles);

function processVoltage(hObject, eventdata, handles)
% Loading in data
voltage=handles.voltage;
time=handles.time;
fps=handles.fps;
thres=handles.editThreshold.Value;
mpd=round(handles.editLockout.Value);
% Detect peaks in voltage signal
[num_peaks, locsa, upstroke_locs, t0_locs, depV, minimum, maximum, amp]=peak_detect(voltage, thres, mpd);
axes(handles.axes1)
hold on
plot(time,voltage,'r')
xlim([0 max(time)])
% Process the voltage signal
type=1; % for voltage
[VRtab,VMtab]=process(locsa, upstroke_locs,t0_locs,depV,voltage,time,fps,minimum,maximum,type);
handles.VRtab=VRtab; % individual results for calcium
handles.VMtab=VMtab; % mean results row for calcium
guidata(hObject,handles);


function editEpochT0_Callback(hObject, eventdata, handles)
% hObject    handle to editEpochT0 (see GCBO)mean
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEpochT0 as text
%        str2double(get(hObject,'String')) returns contents of editEpochT0 as a double


% --- Executes during object creation, after setting all properties.
function editEpochT0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEpochT0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editEpochT1_Callback(hObject, eventdata, handles)
% hObject    handle to editEpochT1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEpochT1 as text
%        str2double(get(hObject,'String')) returns contents of editEpochT1 as a double


% --- Executes during object creation, after setting all properties.
function editEpochT1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEpochT1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonEpochPick. EPOCH SELECTOR BUTTON
function pushbuttonEpochPick_Callback(hObject, eventdata, handles)
    % Make sure you plot in Frames first, before you pick the epoch.
    mode_selection = get(handles.popupmenuMode, 'Value');
    axes(handles.axes1)
    if mode_selection ==  1 % Dual
        calcium=handles.calcium;
        voltage=handles.voltage;
        time=1:1:length(calcium);
        plot(time, calcium)
        hold on
        plot(time, voltage)
    elseif mode_selection == 2 % Voltage only
        voltage=handles.voltage;
        time=1:1:length(voltage);
        plot(time,voltage)
    elseif mode_selection == 3 % Calcium only
        calcium=handles.calcium;
        time=1:1:length(calcium);
        plot(time,calcium)
    end
    xlim([min(time) max(time)])
    xlab='Frames';
    xlabel(xlab)
    ylabel('Fluorescence (AU)');
    hold off
    set(handles.radiobuttonFigureXFrames,'Value',1);

    [pt,~]=ginput(2);                                                                                                                                 
    pt1=round(pt(1));                                                                                                                                       
    pt2=round(pt(2));

    % update text boxes
    set(handles.editEpochT0,'String',num2str(pt1));
    set(handles.editEpochT1,'String',num2str(pt2));


% --- Executes on button press in pushbuttonEpochOK. EPOCH OK BUTTON
function pushbuttonEpochOK_Callback(hObject, eventdata, handles)
    pt1=str2double(handles.editEpochT0.String);
    pt2=str2double(handles.editEpochT1.String);
    LPF_enable = get(handles.checkboxSmoothCal, 'Value'); % check if LPF is enabled
    time=handles.time;
    mode_selection = get(handles.popupmenuMode, 'Value');
    Fc=str2double(handles.editSmoothCalHz.String); % Cutoff Frequency
    dt=handles.dt;

    if mode_selection ==  1 % Dual
        calcium=handles.calcium;
        voltage=handles.voltage;
        if LPF_enable == true
            Fs=1/dt;
            % % FIR 50th order Filtering
            % hb=100; %high band is 60 Hz
            % or=50; %50th order
            % a0=[1 1 0 0];
            % f0=[0 hb hb*1.25 Fs/2]./(Fs/2);
            % b = firpm(or,f0,a0);
            % a = 1;

            % IIR 5th order Butterworth  LPF
            n  = 5;    % Order
            Wn=(Fc/(Fs/2));
            [b,a] = butter(n,Wn);
            pre_calcium=filtfilt(b,a,calcium);
            pre_voltage=filtfilt(b,a,voltage);
        else
            pre_calcium=calcium;% skip preprocessing step
            pre_voltage=voltage;% skip preprocessing step
        end
        epoch=pre_calcium(pt1:pt2);
        epoch=(epoch-min(epoch))/(max(epoch)-min(epoch));
        v_epoch=pre_voltage(pt1:pt2);
        v_epoch=(v_epoch-min(v_epoch))/(max(v_epoch)-min(v_epoch));
        handles.calcium=epoch;
        handles.voltage=v_epoch;
        handles.time=time(pt1:pt2);
        guidata(hObject,handles);
        axes(handles.axes1)
        hold off
        plotEpoch(epoch, pt1, pt2, time)
        hold on
        plotEpoch(v_epoch, pt1, pt2, time)
        set(handles.radiobuttonFigureXTime,'Value',1);

    elseif mode_selection == 2 % Voltage only
        voltage=handles.voltage;
        if LPF_enable == true
            Fs=1/dt;
            % % FIR 50th order Filtering
            % hb=100; %high band is 60 Hz
            % or=50; %50th order
            % a0=[1 1 0 0];
            % f0=[0 hb hb*1.25 Fs/2]./(Fs/2);
            % b = firpm(or,f0,a0);
            % a = 1;

            % IIR 5th order Butterworth  LPF
            n  = 5;    % Order
            Wn=(Fc/(Fs/2));
            [b,a] = butter(n,Wn);
            pre_voltage=filtfilt(b,a,voltage);
        else
            pre_voltage=voltage;% skip preprocessing step
        end
        v_epoch=pre_voltage(pt1:pt2);
        v_epoch=(v_epoch-min(v_epoch))/(max(v_epoch)-min(v_epoch));
        handles.voltage=v_epoch;
        handles.time=time(pt1:pt2);
        guidata(hObject,handles);
        axes(handles.axes1)
        hold off
        plotEpoch(v_epoch, pt1, pt2, time)
        set(handles.radiobuttonFigureXTime,'Value',1);

    elseif mode_selection == 3 % Calcium only
        calcium=handles.calcium;
        if LPF_enable == true
            Fs=1/dt;
            % % FIR 50th order Filtering
            % hb=100; %high band is 60 Hz
            % or=50; %50th order
            % a0=[1 1 0 0];
            % f0=[0 hb hb*1.25 Fs/2]./(Fs/2);
            % b = firpm(or,f0,a0);
            % a = 1;

            % IIR 5th order Butterworth  LPF
            n  = 5;    % Order
            Wn=(Fc/(Fs/2));
            [b,a] = butter(n,Wn);
            pre_calcium=filtfilt(b,a,calcium);
        else
            pre_calcium=calcium;% skip preprocessing step
        end
        epoch=pre_calcium(pt1:pt2);
        epoch=(epoch-min(epoch))/(max(epoch)-min(epoch));
        handles.calcium=epoch;
        handles.time=time(pt1:pt2);
        guidata(hObject,handles);
        axes(handles.axes1)
        hold off
        plotEpoch(epoch, pt1, pt2, time)
        set(handles.radiobuttonFigureXTime,'Value',1);
    
    end

function plotEpoch(epoch, pt1, pt2, time)
    plot(time(pt1:pt2),epoch)
    xlim([time(pt1) time(pt2)])
    xlabel('Time (sec)')
    ylabel('Fluorescence (AU)');
    hold off

% --- Calcium Individual Results
function pushbuttonResultsCaInd_Callback(hObject, eventdata, handles)
CRtab=handles.CRtab;
assignin('base','CRtab',CRtab)
openvar('CRtab')

% --- Calcium Mean Results
function pushbuttonResultsCaMean_Callback(hObject, eventdata, handles)
CMtab=handles.CMtab;
assignin('base','CMtab',CMtab)
openvar('CMtab')

% --- Voltage Individual Results
function pushbuttonResultsVmInd_Callback(hObject, eventdata, handles)
VRtab=handles.VRtab;
assignin('base','VRtab',VRtab)
openvar('VRtab')

% --- Voltage Mean Results
function pushbuttonResultsVmMean_Callback(hObject, eventdata, handles)
VMtab=handles.VMtab;
assignin('base','VMtab',VMtab)
openvar('VMtab')

% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function menuImportNikon_Callback(hObject, eventdata, handles)
[data,dt]=nd2open;
imstd=zeros(size(data,1),size(data,2));                                                                                                                 
for i=1:size(data,1)                                                
    % In each column of each row
    for j=1:size(data,2)                                                                                                                                   
    % That point equals the standard deviation of all the frames in that same column and row index
    imstd(i,j)=std(data(i,j,:));                                                                                                                         
    end
end
axes(handles.axes3) 
hold off
imagesc(imstd);
axis image;
axis off;

fps=1/dt;

set(handles.text23,'String',num2str(dt));
set(handles.text24,'String',num2str(1/dt));

handles.imstd=imstd;
handles.data=data;
handles.dt=dt;
handles.fps=fps;
guidata(hObject,handles)

return

function menuImportTxt_Callback(hObject, eventdata, handles)
[trace,dt,fname]=txtopen;

fps=1/dt;

set(handles.text23,'String',num2str(dt));
set(handles.text24,'String',num2str(1/dt));
set(handles.textFilename,'String',fname);

avesig=trace;

time=0:dt:length(avesig)*dt-dt;

axes(handles.axes1) 
hold off
plot(time,avesig);
xlabel('Time (s)')
ylabel('Fluorescence (AU)');
set(handles.radiobuttonFigureXTime,'Value',1);


handles.fps=fps;
handles.dt=dt;
handles.calcium=avesig;
handles.time=time;
guidata(hObject,handles)



% --------------------------------------------------------------------
function measurement_settings_Callback(hObject, eventdata, handles)
childsettings
% hObject    handle to measurement_settings (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuMode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuMode


% --- Executes on button press in pushbuttonProcessBatch. % BATCH PROCESSING
function pushbuttonProcessBatch_Callback(hObject, eventdata, handles)
pname=handles.pname;
root=handles.edit16.String;
nFiles=str2double(handles.edit15.String);

gr=handles.gr;
gc=handles.gc;
pr=str2double(handles.editCaRegY.String);
pc=str2double(handles.editCaRegX.String);
maxrad=str2double(handles.editCaRegR.String);
mode_selection = get(handles.popupmenuMode, 'Value');

thres=handles.editThreshold.Value;
mpd=round(handles.editLockout.Value);

% What files do you want to load?
files=1:42;
%files=[32:40]; % specify specific file vector



for filenum=files;   
    try
        [ret, data, fps, ~, ~, ~]=sifopen([pname, root,'_',num2str(filenum),'.sif']);
        if ret==0
            break
            disp('problem with locating file')
        end
        dt=1/fps;

        [avesig,time,radi]=region(data,gr,gc,pr,pc,dt, maxrad, mode_selection);
        axes(handles.axes1) 
        hold off
        plot(time,avesig);
        xlabel('Time (s)')
        ylabel('Fluorescence (AU)');
        xlim([0 max(time)])
        set(handles.radiobuttonFigureXTime,'Value',1);
        
        hold on
        [num_peaks, locsa, upstroke_locs, t0_locs, depV, minimum, maximum, amp]=peak_detect(avesig, thres, mpd);
        [~,~,mean_results]=process(locsa, upstroke_locs,t0_locs,depV,avesig,time,fps,minimum,maximum);
        pause(0.5)
        batch_results(filenum,:)=mean_results;
        set(handles.text15,'String',num2str(filenum));
    
    catch   
        batch_results(filenum,:)=zeros(size(mean_results));        
        set(handles.text15,'String',num2str(filenum));          
    end
    
end

Btab=array2table(batch_results,'VariableNames',{'Vmax','UpTime90','TauFall','CaD30','APD80','CaD30d80','D_F0','F1_F0','CL','FD_F0','LD_F0'});
handles.Btab=Btab; % batch results table with mean from each file
guidata(hObject,handles);

%% Menu Items
function advanced_Callback(hObject, eventdata, handles)
% hObject    handle to advanced (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% ----------------ANDOR SIF OPEN-------------------------------------------

function menuImportAndor_Callback(hObject, eventdata, handles)
[~, pdata, fps, ~, fname,pname]=sifopen;
dt=1/fps;
data=pdata(:,:,2:end); % Remove the first frame.
imstd=transform_image(data);

set(handles.text23,'String',num2str(dt));
set(handles.text24,'String',num2str(1/dt));
set(handles.textFilename,'String',[pname, fname]);

axes(handles.axes3)
hold off
imagesc(imstd);
set(gca, 'XTick', []);
set(gca, 'YTick', []);
axis image;
axis off;

handles.imstd=imstd;
handles.data=data;
handles.dt=dt;
handles.fps=fps;
handles.seldirec=pname;
handles.filename=fname;
handles.pname=pname; % we have to export the path name so that batch can use it later
guidata(hObject,handles)

function imstd=transform_image(data)

imstd=zeros(size(data,1),size(data,2));                                                                                                                 
for i=1:size(data,1)                                                
    % In each column of each row
    for j=1:size(data,2)                                                                                                                                   
    % That point equals the standard deviation of all the frames in that same column and row index
    imstd(i,j)=std(data(i,j,:));                                                                                                                         
    end
end



% --- Executes on button press in pushbutton18. % BATCH RESULTS BUTTON
function pushbutton18_Callback(hObject, eventdata, handles)
Btab=handles.Btab;
assignin('base','Btab',Btab)
openvar('Btab')


% --- Executes during object creation, after setting all properties.
function editVmRegX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVmRegX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function editVmRegY_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to editVmRegY (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called

    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

% --- Executes during object creation, after setting all properties.
function editVmRegR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVmRegR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Region Selector OK button VOLTAGE
function pushbuttonVmRegOK_Callback(hObject, eventdata, handles)
    data=handles.data;
    imstd=handles.imstd;
    gr=handles.gr;
    gc=handles.gc;
    pr=str2double(handles.editVmRegY.String);
    pc=str2double(handles.editVmRegX.String);
    dt=handles.dt;
    maxrad=str2double(handles.editVmRegR.String);
    dto=str2double(handles.editVmRegDetrend.String); %detrend polynomial order
    dt_enable = get(handles.checkboxVmRegDetrend, 'Value'); % check if detrending is enabled.
    LPF_enable = get(handles.checkboxSmoothVol, 'Value'); % check if LPF is enabled
    Fc=str2double(handles.editSmoothVolHz.String); % Cutoff Frequency

    mode_selection = 2; % This inverts the signal for voltage when choosing the region

    [avesig,time,radi]=region(data,gr,gc,pr,pc,dt,maxrad,mode_selection); %region plotter
    avesig=double(avesig);

    if dt_enable == true
        opol=dto; %detrend polynomial order
        time=time';
        [p,~,mu] = polyfit(time(:),avesig(:),opol);
        fy=polyval(p,time(:),[],mu);
        d_voltage=avesig(:)-fy;
    else
        d_voltage=avesig; %skip detrending step
    end

    if LPF_enable == true
        Fs=1/dt;
        % % FIR 50th order Filtering
        % hb=100; %high band is 60 Hz
        % or=50; %50th order
        % a0=[1 1 0 0];
        % f0=[0 hb hb*1.25 Fs/2]./(Fs/2);
        % b = firpm(or,f0,a0);
        % a = 1;

        % IIR 5th order Butterworth  LPF
        n  = 5;    % Order
        Wn=(Fc/(Fs/2));
        [b,a] = butter(n,Wn);
        pre_voltage=filtfilt(b,a,d_voltage);
    else
        pre_voltage=d_voltage;% skip preprocessing step
    end

    voltage=double((pre_voltage-min(pre_voltage))/(max(pre_voltage)-min(pre_voltage))); % normalize

    axes(handles.axes1) 
    hold on
    plot(time(:),voltage);
    xlabel('Time (s)')
    ylabel('Fluorescence (AU)');
    xlim([0 max(time)])
    set(handles.radiobuttonFigureXTime,'Value',1);

    axes(handles.axes3)
    imagesc(imstd);
    hold on
    plot(gc(radi), gr(radi), 'k.');
    axis image

    % Exporting variables
    handles.time=time;
    handles.voltage=voltage;
    handles.avesig = avesig;
    guidata(hObject,handles);


% PCL entered here to calculate the recommended lockout time.
function editThresholdCL_Callback(hObject, eventdata, handles)
fps=handles.fps;
pcl=str2double(handles.editThresholdCL.String);

%lockout time calculated
lot_calc=(pcl/1000)*fps;
set(handles.lot_rec,'String',num2str(floor(lot_calc)));


% --- Executes during object creation, after setting all properties.
function editThresholdCL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editThresholdCL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonResultsDeltaInd.
% Differential Results for Vm and Ca
function pushbuttonResultsDeltaInd_Callback(hObject, eventdata, handles)
CRtab=handles.CRtab;
VRtab=handles.VRtab;

CaD80_APD80=CRtab.CaD80-VRtab.APD80;
CaT_AP_actTime=CRtab.ActTime-VRtab.ActTime;
Difftab=array2table([CaD80_APD80,CaT_AP_actTime],'VariableNames',{'CaD80_APD80','ActTimeDiff'});

assignin('base','Difftab',Difftab)
openvar('Difftab')


% --- Executes on button press in checkboxSmoothCal.
function checkboxSmoothCal_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxSmoothCal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxSmoothCal


% --- Executes on button press in checkboxSmoothVol.
function checkboxSmoothVol_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxSmoothVol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxSmoothVol



function editSmoothCalHz_Callback(hObject, eventdata, handles)
% hObject    handle to editSmoothCalHz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSmoothCalHz as text
%        str2double(get(hObject,'String')) returns contents of editSmoothCalHz as a double


% --- Executes during object creation, after setting all properties.
function editSmoothCalHz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSmoothCalHz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editSmoothVolHz_Callback(hObject, eventdata, handles)
% hObject    handle to editSmoothVolHz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSmoothVolHz as text
%        str2double(get(hObject,'String')) returns contents of editSmoothVolHz as a double


% --- Executes during object creation, after setting all properties.
function editSmoothVolHz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSmoothVolHz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editVmRegDetrend_Callback(hObject, eventdata, handles)
% hObject    handle to editVmRegDetrend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVmRegDetrend as text
%        str2double(get(hObject,'String')) returns contents of editVmRegDetrend as a double


% --- Executes during object creation, after setting all properties.
function editVmRegDetrend_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVmRegDetrend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkboxVmRegDetrend.
function checkboxVmRegDetrend_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxVmRegDetrend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxVmRegDetrend



function editCaRegDetrend_Callback(hObject, eventdata, handles)
% hObject    handle to editCaRegDetrend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCaRegDetrend as text
%        str2double(get(hObject,'String')) returns contents of editCaRegDetrend as a double


% --- Executes during object creation, after setting all properties.
function editCaRegDetrend_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCaRegDetrend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkboxCaRegDetrend.
function checkboxCaRegDetrend_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxCaRegDetrend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxCaRegDetrend


% --- Executes on button press in pushbuttonResultsDeltaMean.
function pushbuttonResultsDeltaMean_Callback(hObject, eventdata, handles)
CRtab=handles.CRtab;
VRtab=handles.VRtab;

results(1,1)=mean(CRtab.CaD80-VRtab.APD80,1);
results(1,2)=mean(CRtab.ActTime-VRtab.ActTime,1);
results(2,1)=std(CRtab.CaD80-VRtab.APD80,1,1);
results(2,2)=std(CRtab.ActTime-VRtab.ActTime,1,1);
DiffMtab=array2table(results,'VariableNames',{'CaD80_APD80','ActTimeDiff'});

assignin('base','DiffMtab',DiffMtab)
openvar('DiffMtab')


% --- Executes on selection change in listbox1.
% File selection box
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


% --- Executes on button press in pushbuttonChangeFolder.
% Change Folder Button under list box
function pushbuttonChangeFolder_Callback(hObject, eventdata, handles)

seed='/run/media/lab/Posnack-Heart/Mapping';
seldirec = uigetdir(seed,'Select Image Directory');

Infolder      = dir(seldirec);
fileList = {Infolder(~[Infolder.isdir]).name};
set(handles.listbox1,'Value',1); 
set(handles.listbox1,'String',fileList)
handles.seldirec=seldirec;
guidata(hObject,handles);

% --- Executes on button press in pushbuttonFileLoad.
% Load files from the listbox
function pushbuttonFileLoad_Callback(hObject, eventdata, handles)
seldirec=handles.seldirec;

contents = cellstr(get(handles.listbox1,'String'));
fileSelect=contents{get(handles.listbox1,'Value')};
source=[seldirec, '/', fileSelect];
handles.filename=fileSelect;
[path, name, ext]=fileparts(source);

if strcmpi(ext, '.sif')
    [~, pdata, fps, ~, fname,pname]=sifopen(source, ext);
    dt=1/fps;
    data=pdata(:,:,2:end); % Remove the first frame.
    handles.pname=pname; % we have to export the path name so that batch can use it later
elseif strcmpi(ext, '.sifx')    % TODO sifx does not open from listbox, imstd not right
    [~, pdata, fps, ~, fname,pname]=sifopen(source, ext);
    dt=1/fps;
    data=pdata(:,:,2:end); % Remove the first frame.
    imstd=transform_image(data);
    handles.filename=fname;
    handles.pname=pname; % we have to export the path name so that batch can use it later
elseif strcmpi(ext, '.nd2')
    [data,dt]=nd2open(source);
    fps=1/dt;
elseif strcmpi(ext, '.txt')
    [data,dt]=txtopen(source);
    fps=1/dt;
    avesig=data;
    time=0:dt:length(avesig)*dt-dt;
    axes(handles.axes1) 
    hold off
    axes(handles.axes1) 
    hold off
    plot(time,avesig);
    xlabel('Time (s)')
    ylabel('Fluorescence (AU)');
    set(handles.radiobuttonFigureXTime,'Value',1);
    handles.fps=fps;
    handles.dt=dt;
    handles.calcium=avesig;
    handles.time=time;
end


set(handles.text23,'String',num2str(dt));
set(handles.text24,'String',num2str(1/dt));
set(handles.textFilename,'String',source);

axes(handles.axes3)
hold off
imagesc(imstd);
set(gca, 'XTick', []);
set(gca, 'YTick', []);
axis image;
axis off;

handles.imstd=imstd;
handles.data=data;
handles.dt=dt;
handles.fps=fps;
guidata(hObject,handles)


% --- Executes on selection change in popupmenuMode.
function popupmenuMode_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuMode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuMode


% --- Executes during object creation, after setting all properties.
function popupmenuMode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonClearFigure.
function pushbuttonClearFigure_Callback(hObject, eventdata, handles)
axes(handles.axes1) 
cla


% --------------------------------------------------------------------
function menuImportTiff_Callback(hObject, eventdata, handles)
% hObject    handle to menuImportTiff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    [preData,fps, fname, pname]=tifopen;
    dt=1/fps;
    data=double(preData);
    imstd=zeros(size(data,1),size(data,2)); 
    for i=1:size(data,1)                                                
        % In each column of each row
        for j=1:size(data,2)                                                                                                                                   
        % That point equals the standard deviation of all the frames in that same column and row index
        imstd(i,j)=std(data(i,j,:));                                                                                                                         
        end
    end
    axes(handles.axes3) 
    hold off
    imagesc(imstd);
    axis image;
    axis off;

    fps=1/dt;

    set(handles.text23,'String',num2str(dt));
    set(handles.text24,'String',num2str(1/dt));
    set(handles.textFilename,'String',[pname, fname]);

    handles.imstd=imstd;
    handles.data=data;
    handles.dt=dt;
    handles.fps=fps;
    handles.seldirec=pname;
    handles.filename=fname;
    guidata(hObject,handles)


% --- Executes on button press in pushbuttonExportCSV.
function pushbuttonExportCSV_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonExportCSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if isrow(handles.time)
        time = flip(rot90(handles.time));
    else
        time = handles.time;
    end
    if isempty(handles.voltage) && isempty(handles.calcium)
        msgbox('No wave to export. Please use "Display Wave" button to select pixels on movie screen.','Icon','help')
    else
        mode_selection = get(handles.popupmenuMode, 'Value');
        if mode_selection ==  1 % Dual
            handleVXY = strcat('Vx', handles.editVmRegX.String, 'Vy', handles.editVmRegY.String,...
                'Vr', handles.editVmRegR.String)
            handleCXY = strcat('Cx', handles.editCaRegX.String,'Cy', handles.editCaRegY.String,...
                'Cr', handles.editCaRegR.String)
            handleXY = strcat(handleVXY, handleCXY)
            % Add time and signal arrays into a table, 
            T = table(time, handles.voltage, handles.calcium);
            T.Properties.VariableNames={'Time', 'Voltage', 'Calcium'};
        elseif mode_selection == 2 % Voltage only
            handleXY = strcat('Vx',handles.editVmRegX.String,'y',handles.editVmRegY.String,...
                'r', handles.editVmRegR.String)
            T = table(time, handles.voltage);
            T.Properties.VariableNames={'Time', 'Voltage'};
        elseif mode_selection == 3 % Calcium only
            handleXY = strcat('Cx',handles.editCaRegX.String,'y',handles.editCaRegY.String,...
                'Vr', handles.editCaRegR.String)
            T = table(time, handles.calcium);
            T.Properties.VariableNames={'Time', 'Calcium'};
        end
        % User prompt for input to create csv
        prompt1 = {'Save current signal plot as CSV?'};
        dlg_title1 = 'Save signal CSV';
        num_lines1 = [1 60];
        % Uses directory chosen for image sources
        direc=handles.seldirec;
        file = strtok(handles.filename,'.');    % Get filename without extension 
        file = strcat(file,handleXY);    % Add marker coordinate to filename
        def1 =  {strcat(direc,'Signals/',file,'.csv')};
        answer = inputdlg(prompt1,dlg_title1,num_lines1,def1);
        % process user inputs
        if isempty(answer)      % cancel save if user clicks "cancel"
            return
        end
        filename = answer{1};
        filenameTemp = strsplit(filename,'.');

        % create the Signals folder if it doesn't exist already.
        newSubFolder = strcat(direc,'Signals/');
        if ~exist(newSubFolder, 'dir')
          mkdir(newSubFolder);
        end
        % CSV columns: time (seconds), voltage values, calcium values
        writetable(T, filename, 'Delimiter',',')
%         csvwrite(filename, cell2mat(csv));
    end



function editVmRegX_Callback(hObject, eventdata, handles)
% hObject    handle to editVmRegX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVmRegX as text
%        str2double(get(hObject,'String')) returns contents of editVmRegX as a double



function editVmRegY_Callback(hObject, eventdata, handles)
% hObject    handle to editVmRegY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVmRegY as text
%        str2double(get(hObject,'String')) returns contents of editVmRegY as a double



function editCaRegR_Callback(hObject, eventdata, handles)
% hObject    handle to editCaRegR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCaRegR as text
%        str2double(get(hObject,'String')) returns contents of editCaRegR as a double
