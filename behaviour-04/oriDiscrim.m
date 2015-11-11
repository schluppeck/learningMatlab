function oriDiscrim()
% oriDiscrim - a simple orientation discrimination experiment + data analysis
%
%    program prompts experimenter for a - filename to store information;
%                                       - nTrials (number of trials)
%                                       - orientations (range of orientations)
%
%    subject needs to consent, if yes, the code starts running through the
%    trials in a randomized order. subjects have to press '1' or '2' for CCW, CW
%
%    at the end, a summary of the trials, and proportion or trials reported "CW"
%    is plotted - info is saved out to "filename"
%
%    see also: getExperimentParams, getSubjectInfo, presentTrial
%
% 2015/11/06 - ds - written

% decide on some parameters that we want to use; put the at the beginning
% to make it easier to change later, if we want:
validKeyCodes = mglCharToKeycode({'1', '2'});

% decide on which screen to use
screenNumber = 0;

% get info
[filename, nTrials, orientations] = getExperimentParams()

% get consent
[hasConsented] = getSubjectInfo()

% deal with whether subject has consented right here
if hasConsented == false
  disp('(!) subject has not consented - exiting')
  % return from the main function...
  return
end

% initialize the screen with some default parameters
screenNumber = initializeScreen(screenNumber);

% sort out details of the trials we want to show
% - how many possible orientations?
nOrientations = numel(orientations);

% imagine each orientation being labelled by a number 1...2...3...4...
% then we can make a list of those numbers, which should be nTrials long,
% randomly. help randperm has something that will do just that:
trialOrder = randi(nOrientations, 1, nTrials);

% now pick the orientations in that order. you probably need to think about
% how this works exactly!?
orientations = orientations(:); % make this a column vector
orientationByTrial = orientations(trialOrder);

% make space for keeping information... 
responseByTrial = nan(nTrials, 1);

% a big for loop that displays one trial after the other
for iTrial = 1:nTrials

    % what is the orientation for this trial?
    currentOrientation = orientationByTrial(iTrial);
    
    % display stimulus and get response
    w = presentTrial(currentOrientation, validKeyCodes);

    % pack information away, so we have it later
    responseByTrial(iTrial) = w;
    
    fprintf('trial# %i: ori: %.1f, key: %d\n', iTrial, currentOrientation, w)

end

% now close the screen
closeScreen();

% - save it out to filename! 

% an example of how you could make sure not to overwrite
% have a function that checks the filename. if it exists, prepend date+time
filename = uniqueFilename(filename);

% just use matlab's save function - can save different kinds of data easily
save(filename, 'orientationByTrial', 'responseByTrial');

end
