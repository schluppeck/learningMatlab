 function hrf = makeHrf(TR)
% given the TR, return the HRF shape for t = 0 ... 30s
%
% using the equation given in the lecture (simple boynton version)
 
tau = 2; % time constant (s) 
delta = 2; % time shift  (s)
t = [0:TR:30]; % vector of time points (in steps of TR)
tshift = max(t-delta,0); % shifted, but not < 0
hrf = (tshift ./ tau) .^2 .* exp(-tshift ./tau )./(2*tau); 
 
end