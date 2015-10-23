function out = myThreshold( in )
% myThreshold - takes a simple numeric input and "thresholds"
% 
%   Note: This function was meant as an exercise for using
%         if / else statements. There are many other ways in 
%         which you could have implemented a similar function 
%
%   ds - 2015/10/20

% can check input arguments

if ~isnumeric(in)
    disp('input is not numeric!');
    out = [];
    return
end

if numel(in) > 1
    % then there is more than one number!
    % if we want to deal with this, we would use LOGICAL INDEXING
    % ... this function is only meant as a practice for function writing
    % and for single, number inputs
    disp('this function only handles single numbers!')
    out = [];
    return
end

if in > 0
    disp('YES - bigger than 0!')
    out = in;
else
    disp('NO - smaller than or equal to 0!')
    out = -1;
end

% Specification:
%
% - 1 input argument
% - tests whether the input argument is bigger than 0
% - if yes: display number and some text 'YES'
%     return input argument
% - not not, then 'NO'
%     return a   -1
%     
% So input:     output:
%
%      100 .... 100
%      pi  ...  pi
%     -pi  ...  -1