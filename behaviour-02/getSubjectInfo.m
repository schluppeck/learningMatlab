function [hasConsented] = getSubjectInfo()
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


% This function returns a structure (data) that contains the required
% fields. The subject is queried with a GUI to determine whether or not the
% subject has consented and saves the result of the query in the data
% structure (consented).

% Create a data structure that holds the information about the subject.
data = struct('consented', logical.empty);

% Ask the subject for information.
temp = questdlg('Have you consented to take part in this study', ...
    'Consent', 'Yes', 'No', 'No');
		
hasConsented = strcmp(temp, 'Yes');

end
