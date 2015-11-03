function screenNumber = initializeScreen(screenNumber, measurements)
% initializeScreen- initialize the screen for MGL
%
%      this function opens a screen and sets the units to visual angle
%      coordinates (so all the later calls in the program do the right
%      thing)
%
%      input: screenNumber - 0, 1, or 2
%             measurements - optional [distance to screen, w, h] (in cm)
%                            (by default, we'll assume [57,[16 12]] as a
%                            good guess...
%
%      e.g.:    initializeScreen(0)
%
%   see also: closeScreen, mglClose
%
% ds - 2015/oct - written for c84nim class

% we want to try to open a screen with the appropriate screen number. 0
% means in a floating window on in the centre of the main screen, 1 means
% that the window will take over the whole main screen, 2 and higher will
% only work if one or more extra displays are attached (e.g. in a lab, or
% e.g. with the projector at the front of the room

if nargin < 2
    % then the user has not provided "measurements"
    measurements = [57, 16, 12];
end

if nargin < 1
    % then the user has not provided an input argument
    screenNumber = 0; % assume they want to use this
    disp('(initializeScreen) using screenNumber = 0 as a default... !')
end

% error check
if ~isnumeric(screenNumber) || ~any(screenNumber == [0 1 2])
    error('(initializeScreen) problems opening a screen for you')
end

% set some variables that we can use just below
screenSize = [400, 300];
refreshRate = 60;
colorDepth = 32;

% actually open the screen
mglOpen(screenNumber, screenSize(1), screenSize(2), refreshRate, colorDepth);

% grab the first value stored in the "measurements" variable. That's the
% distance -- then grab the 2nd and 3rd together by using 
% measurements([2 3])
mglVisualAngleCoordinates(measurements(1), measurements([2 3]));
fprintf('(initializeScreen) Using visual angle coordinates\n')
fprintf('(initializeScreen) d=%.1f / w=%.1f / h=%.1f\n', measurements)

% we might also want to clear the screen, this first time - just to make
% sure there are any weird artefacts
% mglClearScreen(0) % to black 
mglClearScreen(0.5) % for gray

% screenNumber will just pass through this function and be returned from
% the function.

% another thing we could do here is to return screenNumber = -1 to indicate
% that something went wrong, then  you could check outside the function and
% terminate your program ?!

end