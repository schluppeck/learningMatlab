function [  ] = visualMinimalMove()
%visualMinimalMove - minimal MGL example of oscillating rectangle
%
%      usage: [  ] = visualMinimalMove(  )
%         by: ds1
%       date: Sep 01, 2014
%        $Id$
%     inputs: 
%    outputs: 
%
%    purpose: show how to make a simple display loop and change something
%    over time...
%
%        e.g: visualMinimalMove(  )

mglOpen(0) % open a window to draw in 
mglVisualAngleCoordinates(57,[16 12]); % set coord frame

for tFrame = linspace(0,2*pi,240)
    % the loop actually goes over a long vector that goes from 0 -> 2pi
    % in 240 steps. That should be around 4s, assuming the standard 60Hz
    % frame rate of the monitors, but there are ways of making sure!
    
    mglClearScreen(0.5) % clears to background gray; clean slate
    
    % the x coordinates change over time (as a function of time!)
    x = [-1; 1; 1; -1] + 3.*cos(tFrame);
    y = [2; 2; -4; -4]; % y stays the same
    
    mglQuad(x, y, [1;0;0]); % draw a box
    
    mglFlush % flip
end

% play a sound.
mglPlaySound('Purr')

% or another litle flourish
msg = 'Press a key...';

mglClearScreen(0.5);
mglTextDraw(msg, [0 0]);
mglFlush

% wait until a button is pressed, then close
pause()
mglClose()

end