% visualImageDisplay
%
%        $Id$
%      usage: visualTestTex(screenNum)
%         by: denis schluppeck, based on mglTestTex by justin gardner
%       date: 2009/07/10 (updated Aug-2014)
%    purpose: illustrate loading of image and display as texture
%
%
%    e,g,
%           visualTestImageDisplay(0,'.lemon-splash')

function retval = visualTestImageDisplay(screenNumber,filename)

% check arguments
if ~any(nargin == [0 1 2])
    help visualTestImageDisplay
    return
end

% check for screenNum
if exist('screenNumber')~=1,screenNumber = 0;,end

% check for fname.
if ieNotDefined('filename') || ~isfile(filename)
    [filename, pathname] = uigetfile({'*.jpg';'*.tif'}, 'Pick an image');
    if isequal(filename,0) || isequal(pathname,0)
        disp('User pressed cancel @ load image stage')
        return
    else
        disp(['User selected ', fullfile(pathname, filename)])
    end
else
    pathname = './';
end


% open up mgl window
mglOpen(screenNumber);
mglVisualAngleCoordinates(57,[16 12]);

% clear both buffers to gray
mglClearScreen(0.5);mglFlush;
mglClearScreen;mglFlush;

% display wait text
mglTextSet('Helvetica',32,[1 1 1],0,0,0,0,0,0,0);
mglTextDraw('Loading image...',[0 0]);mglFlush;

% if we are happy to convert to gray scale, we could do the following
% im = double(rgb2gray(imread(fullfile(pathname, filename))));
% im = flipud(im);

% but if we want to display the image, as it was stored, we should pass a
% 4*width*height array (see mglCreateTexture for details)
im = imread(fullfile(pathname, filename));
% so add alpha channel and make it solid
im(:,:,4) = 256;
% then permute to get right dims:
im = permute(im,[3 2 1]);
% and make sure it's right side up
im = flipdim(im,3);
tex = mglCreateTexture(im);



% this is the main display loop
numsec = 5;
starttime = mglGetSecs;
for i = 1:mglGetParam('frameRate')*numsec
    
    mglClearScreen(1);
    
    % and display image
    mglBltTexture(tex,[0 0], 0, 0, 0)
    
    % fixation cross paramters
    % params(1)=width
    % params(2)=linewidth
    % params(3:5)=color
    % params(6:7)=origin
    
    mglFixationCross([2 3 1 0 0 0 0]);
    mglFlush;
end
endtime = mglGetSecs;

% close the screen
mglClose;

% check how long it ran for
disp(sprintf('Ran for: %0.8f sec Intended: %0.8f sec',endtime-starttime,numsec));
disp(sprintf('Difference from intended: %0.8f ms',1000*((endtime-starttime)-numsec)));
disp(sprintf('Number of frames lost: %i/%i (%0.2f%%)',round(((endtime-starttime)-numsec)*mglGetParam('frameRate')),numsec*mglGetParam('frameRate'),100*(((endtime-starttime)-numsec)*mglGetParam('frameRate'))/(mglGetParam('frameRate')*numsec)));



