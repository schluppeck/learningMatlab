% catchingKeyPresses - script
%
% demo of getting keypresses
%
% ds 2015/11/05


%% to get keypresses we need a screen
mglOpen(0, 400, 300)
% move the small window to the top left corner
mglMoveWindow(50,750)

%% '1' and '2' are the characters
% they have keyboardcodes attached to them

keycodes = mglCharToKeycode( {'1' , '2', 'a', 'q'} )

while true
   % infinite loop 
   
   % k = mglGetKeys();
   % k returns 0 0 0 1 0 0 0 1 0 ...
   % a table with info about which button was pressed
   k = mglGetKeys(keycodes);
   
   % if any of the k's (2 entries is true)
   if any(k == 1)
       disp('user pressed a button')
       break % break the while loop
   end
end




