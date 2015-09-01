%makeDesignMatrix - make a design matrix by repeating a single block N times
%
%      usage: [ d, dRaw, hrf ] = makeDesignMatrix( blockOne, n, hrf )
%         by: ds1
%     inputs: blockOne - definition of a block, e.g. [1 1 1 1 0 0 0 0]
%             n - how many repeats
%             TR - in seconds
%             hrf - shape of the hrf
%
%    outputs: d, dRaw, hrf (for debugging)
%
%    purpose: given one block in the input, the function returns n repeats
%             convolved with the hrf
%      
%             Note, that the units of time (each timestep) is given in TR
%             This is important to get the timescale correct for the hrf
%
%        e.g: blockOne  = [ones(1,4) zeros(1,12)]; 
%             [d, dRaw, hrf] = makeDesignMatrix(blockOne, 10)
%
%             figure
%             subplot(2,1,1), imagesc([ d, dRaw ]  )
%             subplot(2,1,2), plot(dRaw ,'k'), hold on, plot(d, 'r')


% help file only!