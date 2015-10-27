function [filename, nTrials, orientations] = getExperimentParamsAndCheck()
% getExperimentParamsAndCheck - get paramaters from experimenter
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
%    It also keeps asking the experimenter until he provides a well-formed
%    input for all questions. String for filename, a single number for
%    nTrials and one or more numbers for orientations...
%
%    see also: getExperimentParams, input, str2double
%
%    ds - 2015-10-20 


% Ask the experimenter for information.
% if we are very good we could also make sure that the responses the user
% gives are ok.
%
% consider the following code

filename = [];
while isempty(filename)
   filename = input('Enter the filename: ', 's');  
end

nTrials = [];
while isempty(nTrials) || isnan(nTrials) || numel(nTrials) > 1 || nTrials < 1
    nTrials = str2double(input('Enter the number of trials: ', 's'));
    % if we try to convert an input like E into a number, then the
    % str2double function returns NAN... so we can see if experimenter
    % provides nonsense here...
end

orientations = [];
while isempty(orientations) || any(~isnumeric(orientations))
    orientations = input('Enter the orientations to test: ');
end

end