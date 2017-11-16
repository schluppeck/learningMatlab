% loop over plots 
%
%  code to go with aToZ-intro/08-loopOverPlots.md
%
%  show how to make a plot of a family of curves.
%
% ds, 2017-11-16

%% What's given at the start

x = linspace(-3,3,100);
mus = [-1, -0.5, 0, +0.5, 1];
sigmas = [0.5, 0.5, 1, 2, 2];
colors = lines(5);

%% Hint 1 - calculate

% how many parameters?
nParams = numel(mus); % if we grow the vector this will still work
% now loop from 1...nParams
for iParam = 1:nParams
  % make a new y, using consecutive mus and sigmas!
  y = normcdf(x, mus(iParam), sigmas(iParam));
end

%% Hint 2 - plot many things
% how many parameters?
nParams = numel(mus); % if we grow the vector this will still work
figure % make a new figure window
% now loop from 1...nParams
for iParam = 1:nParams
  y = rand( size(x) ); % make something random of correct size
  plot(x, y, 'k');
  hold('on'); % make sure you don't erase
  % the following also works...
  % hold on
end

%% hint 3

% how many parameters?
nParams = numel(mus);
figure % make a new figure window
for iParam = 1:nParams
  y = rand( size(x) ); % make something random of correct size
  theColor = colors(iParam, :); % pick the i'th row
  plot(x, y, 'color', theColor );
  hold('on'); % make sure you don't erase
  % the following also works...
  % hold on
end

%% the final answer
nParams = numel(mus);
figure % make a new figure window
for iParam = 1:nParams
  % make a new y, using consecutive mus and sigmas!
  y = normcdf(x, mus(iParam), sigmas(iParam));
  theColor = colors(iParam, :); % pick the i'th row
  plot(x, y, 'color', theColor );
  hold('on'); % make sure you don't erase
end

title('solution')