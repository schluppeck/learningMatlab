function [ myOutput ] = reverseMe( myInput )
%reverseMe - reverses the order of whatever comes in
%
%     e.g.    
%           x = reverseMe(1:10) % or
%           y = reverseMe('asdf') % or even
%           rAlphabet = reverseMe('A':'Z')
%
%    note: only works correctly for vectors (not matrices)
%
%    see also: colon, char
%
% ds - 2015/10/21

% would be a good idea to check that the input the user provides is good
% more about how to do this later...

% to reverse the input that was given,
% - find out how long it is (n)
n = numel(myInput);

% - make a list that starts and n and goes down by 1 to the beginning
idx = n:-1:1;

% - use that to index into the input
% - return the result
myOutput = myInput( idx );

% the following is slightly neater matlab syntax
%  myOutput = myInput( end:-1:1 );

end
