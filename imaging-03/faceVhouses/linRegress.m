function b = linRegress(y_filename, X_filename, coords)
%linRegress - does linear regression like in the script
%
%   ds 2018-11-12 for matlab class

% load data
V = niftiread(y_filename);

% load design matrix
load(X_filename)

% designMatrix

% pick the timeseries for the voxel that the user wants me to process

x = coords(1);
y = coords(2);
z = coords(3);

y_data = squeeze( V(x,y,z, : )) ;

% linear regression stuff

% add a column of ones to deal with offset (as previously discussed)
designMatrixAug = [designMatrix, ones( size(designMatrix,1), 1)];

b = designMatrixAug \ y_data;

end

