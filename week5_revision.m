%% week 5 recap - matlab
%
% denis schluppeck, 2019-10-29

%% fundamental operation: assignment

a = 1;  % variable 'a' is assigned the value 1;

% a is the left hand side / 1 the right hand side of =
%
% don't confuse with the related / but slightly different way it's used in
% maths
%
% y = a*x + c;


% does this / should this work?
a = a + 1 

%% numbers, vectors, matrices

% make a column vector   ; tall thin
C = [1; 2; 3]; 

% make a row vector      , short fat
R = [1, 2, 3];         

% combining the two
M = [1, 2, 3;
     10, 20, 30];
 
% important note... the way we talk about 2 or higher-dimensional arrays is:

% ROWS, COLUMNS, 3rd dimension, 4th dimension...
% R, C

% and don't get mixed up:
%
% a column vector has many rows
%
% a row vector has many columns

size(M)

%% true, false, relational operators
% for doing branching and/or finding if conditions are me, you can use
% logical operators 

%% 1. single true . false values

5 > 3 % "is 5 bigger than 3?"

3 == 3 % is 3 equal to three



%% 2. for all elements in a vector matrix

M > 3 % for each element in M

%% indexing (3 ways)
% several different ways of accessing elements in a vector / matrix

%% 1. specify rows and columns

M(2,3)   % 2nd row, 3rd column

M([1,2] , 3 ) % first and second row, 3rd colum

% idea: marker pen to highlight rows and columns of interest.
% .     where both row/columns are highlighted... you take those data

%% 2. specify properties of entries you are interested in:

idx = (M > 3)   % true/false for each element where M > 3... store this in idx

M(idx)  % only take the values from M, where the idx variable was true

% idea: sifting data according to some condition you set.


%% 3. linear indexing
% treat a table like one big long list (snake of data?!)

% only use one index...
M(5)   % even though M only has 2 rows, 3 columns, this works.

% why? there are 6 elements, and element 5 is available.

% more on this: sub2ind() and ind2sub() allow you to go between linear and
% subscript based indices


%% branching, if-else

a = rand(1); % random number between 0 and 1

if a > 0.5
    disp('john travolta: Chance favours the prepared mind...')
else
    disp('better luck next time')
end

%% loops 

nLoops = 10;

for iLoops = 1: nLoops
   
    disp(['we are in interation ', num2str(iLoop) ])
    
end


% also have while loops - but less common, in my experience


%% various bits and bobs
%
% - publish() command
% - sections with %%
% - plots tab
% - import data button ...