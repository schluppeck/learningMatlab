function e = sqerror(p, xdata, ydata)
% sqerror - caluclate sum of squared errors between a normalcdf and data
%
%      we want to calculate the y-values of an s-shaped (cumulative
%      gaussian curve) with parameters p (which contains [mu, sigma]).
%
%      to do this, we need to know at which x-values we need to calculate.
%      We can use our myNormpdf function, which has a convenient way of
%      specifying mu and sigma together:
%
%      y = myNormcdf(p, xdata);  % y-values for this choice of p
%
%      but the real data (for the corresponding x-values) are located at
%      ydata. so we can now take the difference between y and ydata,
%      element-wise. square these differences... and then sum them up. And
%      that's going to be the SSE, the sum of squared errors.
%
%
% 20151111, ds written

y = myNormcdf(p, xdata);  % y-values for this choice of p

% the differences (at each value) is just:
d = ydata - y;

% then we square them, one by one
dsquared = d.^2; % careful: need .^

% and sum...
e = sum(dsquared);


% NOTEs... 
%
% 1. once you are bit comfortable with doing 2-3 steps at once, you could
% also consider shortening this to:
%
%     e = sum( (ydata - y).^2 );
%
% 2. another way would be to use the dot-product of d, with itself.
% but that's linear alegebra... so don't worry about this too much.
%
% e = dot(d,d);
%


end