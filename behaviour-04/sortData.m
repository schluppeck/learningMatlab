function data = sortData( orientationByTrial, responseByTrial )
% sortData - takes trial-by-trial data and returns a summary table
%
%    turn data like this:
%
%           oriByTrial = [-0.5,  -10.0, 5.0, 10.0, 0, 0 ...]
%           responseByTrial = [1, 1, 2, 2, 2, 1, 1, 2, ...]
%
%    into data like this:
%
%           data =[
%           -10.0000         0
%            -5.0000         0
%            -3.0000         0
%            -1.0000         0
%            -0.5000    0.1250
%                  0    0.2000
%             0.5000    0.6667
%             1.0000    0.6667
%             3.0000    1.0000
%             5.0000    1.0000
%            10.0000    1.0000]
%
%     e.g.:
%             load sampleData   % contains canned data 
%             data = sortData( orientationByTrial, responseByTrial )
%
%
% 2015/11/07 - ds, written

% which response # corresponds to CW -- this might change?
cwKey = 2;

% how many unique orientations are there?
uniqueOrientations = unique(orientationByTrial);
nOrientations = numel(uniqueOrientations);


% go through each orientation, find out how many trials, and how many CW
% responses

% space to store them
pCW = nan(nOrientations, 1);

for iOri = 1:nOrientations

    % which orientation are we dealing with in this iteration of the loop
    currentOrientation = uniqueOrientations(iOri);

    % how many trials at this ori? find their locations
    ii = find(orientationByTrial == currentOrientation);

    % for this subset, how many are equal to the cw response (the number 2)?
    cwResponses = responseByTrial(ii) == cwKey;
    % and divide by however many trials were at this orientation to get the
    % proportion
    pCW(iOri) = sum( cwResponses ) ./ length(ii);

end

% make a table
data = [uniqueOrientations(:), pCW(:)];

end
