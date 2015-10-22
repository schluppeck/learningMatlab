%% if/else demo
%
% a small script to illustrate the use of logical variables and
% if/else branching.
%

%%
a = rand(1);

if (a > 0.5)
    % something I need to do with a > 0.5
    disp('yay - the number is bigger than 0.5')
    % if you want to display the value of a in a neat one-line statement
    % either convert the number to a string using num2str()
    disp( [ 'yay - the number ' num2str(a) ' is bigger than 0.5'  ] )
    
else
    % something else
    disp('uhoh - better luck next time')
end

% or use the function fprintf()   - look at the documentation for details
%
% doc fprintf
%
% this let's you specify the format in which you want to print the value
% the %i or %0.2f are called "format strings". google for lots of examples!
% the \n is required to add a "newline" at the end
fprintf('as a floating point number x.x  %.1f\n', a )
fprintf('...or x.xx %.2f \n', a)
fprintf('... or like this xxx.xxxx %07.3f \n', a ) % padded with 0 to be 7 numbers long in total

% in the above example a gets inserted into the string in the appropriate
% format wherever there is a format string that looks like %...