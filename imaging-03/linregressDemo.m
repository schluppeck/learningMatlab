function linregressDemo( fname )
%% linregressDemo - linear regression demo 
%
%      usage: [  ] = linregressDemo(  )
%         by: lpzds1
%       date: Nov 23, 2013
%
%    purpose: a script / function to demonstrate some important aspects of
%             linear regression in action. matlab functions, etc.  
%

% where the data are
if nargin < 1
    fname = 'timecourse.mat';
end

% check if file is present
if ~exist(fname, 'file') == 2
    error(sprintf('%s not present!', fname))
end

% provides "timecourse", "t"
load(fname);

nDummies = 8; % this means that the first 8 timepoints

% chop the time vectors and the time series
t.s = t.s( (nDummies+1):end );
t.vols = t.vols( (nDummies+1):end );
timecourse = timecourse( (nDummies+1):end );

%% the makeDesignMatrix function should be changed to also include a linear
% ramp and a constant term. We can check that d and dRaw have the correct
% number of columns!

blockOne = [ zeros(1,10) ones(1,6)];
[ d, dRaw, hrf ] = makeDesignMatrix( blockOne, 10);

if size(d,2) == 1
    disp('(!) the version of makeDesignMatrix() you are using')
    disp('(!) only returns 1 column, not 3!? ')
    error('wrong version of design matrix code')
end

figure
plotyy(t.s, timecourse, t.s, d(:,1))
xlabel('Time (s)')
ylabel('fMRI response (image intensity)')


%% figure, plot([d]), colormap(gray)
figure; imagesc([d]), shading flat, colormap(gray), pbaspect([1 4 1]), colorbar
% use export_fig!

xlabel('Design Matrix Column')
ylabel('Time (volumes)')

%% what happens if we multiply d with some chosen beta values?
d*[100; 10; 1]


%% leading up to normal equation:

% y = X*beta
% X\y = beta

% here y is our data, which is in timecourse
%      X is the design matrix, which is in d

y = timecourse;
X = d;

beta = X\y;  % those are the beta weights

% for more details on "backslash" see
% help \     

%% model fit

% calculate the model fit, which is the beta weights times the columns in
% the design matrix
model = X*beta;

figure
subplot(2,3,1:3)
plot(t.s, model,'r-', t.s, timecourse, 'k:','linewidth',2)
axis([min(t.s) max(t.s) -inf inf])
for iPlot = 1:3
    subplot(2,3,iPlot+3)
    plot(t.s, X(:,iPlot)*beta(iPlot),'.-', 'linewidth',2 )
    axis([min(t.s) max(t.s) -inf inf])
    title(sprintf('component: %d', iPlot))
end

figure
subplot(3,2,[1:4])
plot(t.s, model,'r-',t.s, y, 'k', 'linewidth',1.5);
axis([min(t.s) max(t.s) -inf inf])
ylabel('fMRI response (image intensity)')

subplot(3,2,5:6)
plot(t.s, y-model,'', 'linewidth',1.5)
axis([min(t.s) max(t.s) -inf inf])
xlabel('Time (s)')
ylabel('Residuals')


%% regressing out e.g. the linear ramp:
subset = [1 3]; % not 2
reducedModel = X(:,subset)*beta(subset);
 
%% or data minus a particular contribution "REGRESS OUT"
compToRegress = [2];
dataRegressedOut = timecourse - X(:,compToRegress)*beta(compToRegress);


figure, plot(t.s, reducedModel,'r-',t.s, dataRegressedOut, 'b-', t.s, timecourse, 'k', 'linewidth',1.5);
axis([min(t.s) max(t.s) -inf inf])


%% OR using the solution written down by solving the matrix equation
% - this is correct although not quite as elegant, as computing the inverse
% of a matrix is a lot of work and with the backslash command you can avoid
% that step... the linear algebra details of why that's the case are beyond
% the scope of our course, though ;]
%
% beta = inv(X'*X)*(X')*y;


%% OR using the pseudoinverse
% beta = pinv(X)*y

%% OR the stats toolbox way
% [beta bint res] = regress(y,X)

%% some additional nitty gritty ()
% column space of a matrix:
% any combination of the columns

% null space; get orthonormal basis of N(X') by matlab NULL command:
% Xnull = null(X');
% 
% gives all possible things that are NOT in the column space... one way to
% think about this is so could appear in your data but the regression would
% miss it 
%
% offset = Xnull * [randn(size(Xnull,2), 1)];
% figure, plot(offset)

end



