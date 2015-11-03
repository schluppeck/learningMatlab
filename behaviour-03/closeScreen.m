function [] = closeScreen()
% closeScreen - close the mglScreen and say bye!
%
%    this function closes the mgl screen and says bye bye in the terminal
%    window. if you want to say byebye on the mgl screen, you obviously
%    have to do this before you close the mglscreen ;]
%
%    see also: initializeScreen, mglOpen, mglClose
%
% ds - 2015/oct - wrote it for c84nim class

% clear the screen
mglClearScreen(0.5) % gray

% prepare some text (straight from the help for mglTextDraw()
mglTextSet('Helvetica',24,[1 1 1],0,0,0);
% draw one bit of text 1 degree up, another 1 degree down (-1.0)
mglTextDraw(' Thanks for participating ',[0 1.0]);
mglTextDraw(' Press any key to close window ',[0 -1.0])

% and
mglFlush;

% and wait for a matlab keypress - timing doesn't matter here, so we can
% use the matlab builtin function
pause() 


% and close the screen
% this will actually even work, if no mgl screen is open.
mglClose()
disp('(closeScreen) bye bye, experimenter')

end