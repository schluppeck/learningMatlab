function y = myNormcdf(p, x)
% myNormcdf - re-wrap normcdf in a way that we like
%
%     normcdf - the cumulative normal distribution function (a nice
%     s-shape) expects the input arguments in a certain order. But for
%     fitting curves, matlab really wants things to be organized in another
%     order, so this function re-configures the order of input arguments
%
%   see also: normcdf, lsqcurvefit, function
%
%        e.g.:
%             x = [-10 -5 -2 -1 0 1 2 5 10]; % x values
%             p = [0, 1.5]; % mu = 0, sigma = 1.5
%             y = myNormcdf(p, x);
%             plot(x,y, 'rs-')
%
%
% 20151160 - ds, written

% the two parameters that normcdf needs are passed in as a vector.
% unpack it here
mu = p(1);
sigma = p(2);

% now calculate the y-values that fall on the s-shape at partiuclar values
% of x, for the current parameter settings
y = normcdf(x, mu, sigma);

end
