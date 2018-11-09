 function [hrf, t] = makeHrf(TR)
% makeHrf - make a canonical HRF shape
%
% given the TR, return the HRF shape for t = 0 ... 30s
%
% using the equation given in the lecture (simple boynton version)
%
%      e.g.: [hrf, t] = makeHrf(1.5); % make an HRF where TR is 1.5s
%            figure()
%            plot(t, hrf, 'ro')
%
%            % and/or much finer grained:
%
%            [hrf_2, t_2] = makeHrf(0.1); % make an HRF where TR is 0.1s
%            hold('on')
%            plot(t_2, hrf_2, 'k-')
%            
%            xlabel('Time (s)'), ylabel('fMRI response')
%
%
%  see also: conv
%
% ds 2018-11-10 fixed up for 2018 class
 
tau = 2; % time constant (s) 
delta = 2; % time shift  (s)
t = [0:TR:30]; % vector of time points (in steps of TR)
tshift = max(t-delta,0); % shifted, but not < 0

% this implements the equation.
hrf = (tshift ./ tau) .^2 .* exp(-tshift ./tau )./(2*tau); 
 
end