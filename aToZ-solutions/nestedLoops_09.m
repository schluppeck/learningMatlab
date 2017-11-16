% nested loops
%
%  code to go with aToZ-intro/09-nestedLoops
%
%  show how to put a loop inside a loop
%
% ds, 2017-11-16

%% Given

% the details of what X exactly represents are not that important here ;]
h = [1 2 3 9];
X = convmtx(h,6)

% Your nested for loops should produce something like:
% 
%
% |row=1, column=1, VALUE: 1
% row=2, column=1, VALUE: 0
% ...
% row=3, column=4, VALUE: 2
% ...
% row=6, column=6, VALUE: 9| 


%% Hint 1 - going over rows

% how big is X?
size(X) % 6 by 6

for iRow = 1:6
   X(iRow, :)  % this picks each row in turn 
end

% but better not to hard-code the number 6
nRows = size(X,1);
for iRow = 1:nRows
   X(iRow, :)  % this picks each row in turn 
end


%% Hint 2 - columns

% how big is X?

% but better not to hard-code the number 6
nRows = size(X,1);
nColumns = size(X,2);

for iColumn = 1:nColumns
   X(:, iColumn)  % this picks each COLUMN in turn 
end


%% Hint 3 - both!


% but better not to hard-code the number 6
nRows = size(X,1);
nColumns = size(X,2);

% each time we go to a new row...
% we want then go through each column
for iRow = 1:nRows
    % loop over rows (this loop runs 6 times)
    % and each time we go to a new row (including the first)
    % step through each column... that ends up being a single element
    for iColumn = 1:nColumns
        % this loop runs 6 times for each row
        % so 6 x 6 times... 36
        X(iRow, iColumn)  % need to say which ROW and COLUMN
    end
end

%% Hint 4 - display nicely

% but better not to hard-code the number 6
nRows = size(X,1);
nColumns = size(X,2);

% each time we go to a new row...
% we want then go through each column
for iRow = 1:nRows
    % loop over rows (this loop runs 6 times)
    % and each time we go to a new row (including the first)
    % step through each column... that ends up being a single element
    for iColumn = 1:nColumns
        % this loop runs 6 times for each row
        % so 6 x 6 times... 36
        currentElement = X(iRow, iColumn);  % need to say which ROW and COLUMN
        disp(['row=', num2str(iRow), ' | column=', num2str(iColumn), ' | VALUE: ', num2str(currentElement) ])
    end
end


