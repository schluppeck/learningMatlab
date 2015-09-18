function [  ] = visualChangeColours(nDisks)
%visualChangeColours - demo of a simple MGL program that changes colours dynamically
%
%      usage: [  ] = visualChangeColours(  )
%         by: ds1
%       date: Sep 01, 2014
%      input: n - number of disks to draw
%
%    purpose: draw some disks on a screen with particular hues
%
%        e.g: visualChangeColours(10)

if nargin < 1 || ( nDisks < 2) || (nDisks > 25)
    nDisks = 18;
    disp(['setting default n: ' num2str(nDisks)])
end

%% Color space conversion
% this LMS -> RGB conversion matrix is taken from Jon Peirce's PsychoPy
% documentation. To make this work properly on your display, you need to
% find this with a proper monitor color calibration 
%
% see http://www.psychopy.org/epydoc/psychopy.misc-pysrc.html
% around line 300.
cones2rgb = [ 4.97068857, -4.14354132, 0.17285275;  % R 
           -0.90913894, 2.15671326, -0.24757432;  % G 
           -0.03976551, -0.14253782, 1.18230333]; % B 

%% examples of how to convert from cone space to RGB
% e.g. to covert from [1 -1 0] % L-M
LminusM = cones2rgb * [0.7 0.3 0.5]' ;
MminusL = cones2rgb * [0.3 0.7 0.5]' ;
med = cones2rgb * [0.5 0.5 0.5]' ;

%% Open a screen for display (on current display)
%
% this uses an MGL function / PsychToolbox has a Screen function
% to achieve the same
mglOpen(0)

% clear to a solid color
mglClearScreen(0.5); % background gray

% set things up, so we can specify in units of visual angle
mglVisualAngleCoordinates(57,[16 12]);

% make some colors.
lmsColors = [   linspace(0.7, 0.3 , nDisks); % this row changes from high to low
                linspace(0.3, 0.7 , nDisks); % this row from low to high
                0.5 .* ones(1,nDisks) ];     % this stays at 0.5
% one color per column

%% convert the lms / cone colors to RGB triplets
rgbColors = cones2rgb * lmsColors;  % here we mean MATRIX multiply!

%% Define the geometric objects that we want to display
%
% see help for mglGluPartialDisk for explanation of the parameters

% many rows (one for each centre), one column
x = zeros(nDisks, 1); 
y = zeros(nDisks, 1); 

% inner and outer size of each wedge
isize = 0.5 .* ones(size(x));
osize = 5.0  .* ones(size(x));

% the angle at which each wedge starts and how much it sweeps by
startAngles = linspace(0, 180, nDisks)';
sweepAngles = 180 ./ (2.* nDisks)  .* ones(size(x));
adjustCentre = sweepAngles(1) ./ 2;

% then display is (right side of screen, +ve X
mglGluPartialDisk(x+1.0, y, isize, osize, startAngles-adjustCentre, sweepAngles, rgbColors, 60, 2);

% and make another fan on other side
% here we just shift X by -1.0 deg, add 180deg to the angles and change the
% colors to those produced by matlab jet (or try hot(), prism(), cool(),
% winter(), etc.
mglGluPartialDisk(x-1.0, y, isize, osize, startAngles + 180-adjustCentre, sweepAngles, jet(nDisks)', 60, 2);

% all the drawing was happening in the "back buffer" - swap them out and
% display.
mglFlush();
disp('Displaying funky colour wheel...')
disp('... waiting for key press to close screen')
pause()

% close the MGL window we opened up.
mglClose

end