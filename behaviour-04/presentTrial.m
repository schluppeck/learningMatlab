function [whichResponse, correct] = presentStimulus(stimulusOri, validKeyCodes)
% presentStimulus - present a line stimulus at a particular orientation
%
% This function shows a stimulus in an mgl screen and waits
% until the subject presses a valid key. The valid keycodes are specified 
% in the array validKeys. The function returns the key that was pressed.

% present a line stimulus - draw it, then FLIP
mglClearScreen(0);

% some details about the line:
% x0, y0 ... x1, y1
lineSize = 4;
lineColor = [1, 1 ,1];
antiAlias = 1;

% figure out x1, y1
r = 5; % degrees (radius of a circle)
% in maths, positive angles are CCW, we want negative angles CCW, hence the
% minus sign
x1 = r.*cosd( -stimulusOri + 90); % + 90 to make sure it's vertical 
y1 = r.*sind( -stimulusOri + 90); % + 90 to make sure it's vertical 

mglLines2(-x1,-y1, x1, y1, lineSize, lineColor, antiAlias);
mglFlush();

% which keys are valid?
% stored in validKeyCodes

% initialize the response variable
response = [];
while ~any(response)
    response = mglGetKeys(validKeyCodes);
end

% convert the response which is [0 1] or [1 0] into 1 or 2...
whichResponse = find(response);

if stimulusOri < 0 && whichResponse == 1
    % if the stimulus was CCW and the subject said CCW
    correct = 1;
elseif stimulusOri > 0 && whichResponse == 2
    % if the stimulus was CW and the subject said CW
    correct = 1;
else
    correct = 0;
end

% once  a button has been pressed, wait for 1/2 a second,
% clear the screen (actually the
% backbuffer), then flip.
mglWaitSecs(0.5);
mglClearScreen(0);
mglFlush();

end