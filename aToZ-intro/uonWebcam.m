%% uonWebcam()
%
% Wait for a button press and acquire an image from webcam (using the Image
% Acquisition Toolbox).
% NB: A script for now to make camera object available in
% workspace.

function [ obj, frame ] = uonWebcam()
%uonWebcam - acquire an image from webcam
%
%      usage: [  ] = uonWebcam(  )
%         by: lpzds1
%       date: Mar 02, 2014
%        $Id$
%     inputs:
%    outputs: frame (the image that was snapped)
%
%    purpose:
%
%        e.g: x = uonWebcam()

%% Pick the first webcam and make it available
% depending on whether this code is run on a PC or Mac, we need to do
% different things

try
    if ispc()
        obj = videoinput('winvideo', 1);
    elseif ismac()
        obj = videoinput('macvideo', 1);
    else
        disp('(uhoh) this code hasn''t been tested on unix/linux')
        return
    end
    disp(['image color space: ' obj.ReturnedColorSpace ]);
        
catch
    disp('(uonWebcam) looks like there are problems initializing the webcam')
    disp('            do you have a webcam & the image acq toolbox?')
    adapters = imaqhwinfo;
    if ~verLessThan('matlab', '8.4') 
        disp('            Looks like you are running a Matlab version > 8.4!')
    end
    return
end


%% set up a preview window
% code from adapted from "help preview" !

f1_ = figure('Name', 'webcam preview');
uicontrol('String', 'Close', 'Callback', 'close(gcf)');

% Create an image object for previewing.
vidRes = get(obj, 'VideoResolution');
nBands = get(obj, 'NumberOfBands');
hImage = image( zeros(vidRes(2), vidRes(1), nBands) );
axis image
preview(obj, hImage);

%% Pause
% wait until person presses a button to take a snapshot. You could also do
% this such that there is a particular time delay
disp('Waiting for a button press to take snap...')
pause()
frame  = getsnapshot(obj);
disp('CLICK!')

%% Turn image to grayscale
% using a function from Matlab / Image Processing Toolbox

frameRGB = ycbcr2rgb(frame);

%% Display image
% using |image()| to display the standard rgb image.
f2_ = figure('position',[50 50 400 300]);
image(frameRGB);

% make the aspect ratio correct and switch axes/ticks off.
axis image
axis off

%% clean up and close
disp('Waiting for a button press to close...')
pause()

close all

end
