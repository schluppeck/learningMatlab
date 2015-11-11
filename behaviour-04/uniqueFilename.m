function filenameOut = uniqueFilename(filenameIn)
% uniqueFilename - check if filename exists, if yes, make it unique
%
%   if the filename passed in exists: add date + time to it to make it
%   unique. The format for the time is yyyymmdd-HHMMSS 20151109-145631
%
%         e.g. ~/matlab/data/output.mat 
%                   would become
%              ~/matlab/data/20151109-143532-output.mat
%
%   note: relies on the fact that files are unlikely to be produced more
%   quickly that once per second!
%
%   see also: datestr, now, fileparts, fullfile, exist, filesep
%
% 20151109 - ds written

if exist(filenameIn, 'file') == 2
    % then matlab knows about this file / it exists already

    % let matlab function break it into PATH, NAME and EXTENSION
    [pathstr, name, ext] = fileparts(filenameIn)
        
    % now add the date+time (as a string) to the name bit 
    name   = [datestr(now,'yyyymmdd-HHMMSS') '-' name];
    
    % and reassemble
    filenameOut = fullfile(pathstr, [name ext]);      
else
    % just use what we have
    filenameOut = filenameIn;
end

end