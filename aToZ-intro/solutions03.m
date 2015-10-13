%% solutions_03
%  possible solutions to some questions on https://github.com/schluppeck/c84nim
%
%  ds / 2015

% potentially clear memory and close all windows. Often a good idea
close all
clear all


%% 3. Create a column vector ``r`` of size 100 that contains randomly chosen
% ``0`` or ``1``, each with equal probability. 

% there are many ways to achieve this but probably the most straightforward
% way is to use the matlab builtin function |randi|
% If you check help randi you will find one way of using this function in
% which you can specify the minimum and maximum integers to pick from. If
% you give [0, 1], then it will pick 0s or 1s. You also need to specify how
% many rows and columns you want. A column vector of length 100 has 100
% rows:

r = randi([0, 1],   100, 1) 
%          ^^^^     ^^^  ^
%          range   rows  columns

%% 4. Create another column vector ``s`` of size 100 that contains randomly
% chosen ``0`` (with p=0.3) and ``1`` with p=0.7).   
%
%  5. Look at the help for the function ``randperm``. Create a randomly
% permuted vector ``idx`` of size 10, and a vector ``q`` that contains 5
% zeros followed by 5 ones. Can you think of a simple way to permute the
% entries ``q`` using ``idx``. 

% Let's take the next two problems together...
% this is a bit more tricky. One way to do this is to stick one vector of
% 1's together with another vector of 0's and permute the order.
% How many 0's?   p=0.3 means a proportion of 0.3 of the 100 wanted:
% How many 1's?      the rest.

s = [ zeros(30,1); ones(70,1)  ];  % they are still in  "order": 1, 2, 3, ...

% to reorder them, imagine each entry has associated with it an INDEX (or a
% position in the list...), if we jumble the list, then we can use that to
% re-order the associated values:

idx = randperm(100)  % makes a jumbled version of 1:100

s(idx)   % is a jumbled version of s.


% Aside (requires logical tests, which you may not know about yet. if you
% are happy with "approximately" p = 0.3 that might differ on each repeat
% of running the code, then you could make  a vector of 100 numbers that
% are drawn from a uniform random distribution between 0 and 1:   

s = rand(  100, 1   )  

% if you check for where each entry is smaller than 0.3, then this will be
% the case for each entry with p = 0.3, approximately; the converse will be
% true with p = 0.7

( s < 0.3 )   % is true with p of about 0.3  
( s >= 0.3 )   % is true with p of about 0.7

% and in newer versions of matlab you need to convert to double()
double( s < 0.3 ) 
double( s >= 0.3 )
  

%% 5. Look at the help for the function ``randperm``....

q = [ones(5,1); zeros(5,1) ]
idx = randperm(10)
q
q(idx)


%% 6. Now repeat the previous exercise but re-write the code such that the
% size of ``idx`` can be controlled by a variable ``n``. Are there any
% things to watch out for here?   

n = 20; % means we want 10 0's and 10 1's
% so we combined n./2 of each...
q = [ones( n./2  ,1); zeros( n./2 ,1) ]
idx = randperm( n );
q(idx)

% .... one of the gotchas here is what happens when n <= 0 or n is odd??
% what could we do to deal with this ??

%% 7. Find a way to make a matrix ``X`` that has 50 rows and 3 columns.
% Column 1 should contain 1..50. Column 2 should contain 1^2..50^2 and
% Column 3, ?1..?50.   

n = 50;
% make sure it's a column vector
v = transpose(1:n); % or v = (1:n)'; 
% or even v(:)

X = [v, v.^2, sqrt(v)]
