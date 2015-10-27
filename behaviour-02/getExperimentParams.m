function [filename, nTrials, orientations] = getExperimentParams()
% getExperimentParams - get paramaters from experimenter
%
%    input arguments: none
%    ouput arguments: 
%                     filename  - a string e.g. 'test.mat'
%                     nTrials   - a number, e.g. 15
%                     orientations - vector, e.g. [-10:10] or [-10 -5 0 5 10]
%
%    This function returns three variables. The experimenter is queried via
%    the command line to determine the values for the filename, nTrials,
%    and deltas.   
%
%    ds - 2015-10-20 


% Ask the experimenter for information.
filename = input('Enter the filename: ', 's');

% the input function returns either STRINGS or matlab expressions...
% to turn a STRING into a number we need to use the str2double function.
nTrials = input('Enter the number of trials: ');
orientations = input('Enter the orientations to test: ');

end