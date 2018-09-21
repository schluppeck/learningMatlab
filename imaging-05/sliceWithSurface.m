%% slice trough a volume with a surface 
% - this example is a plane at a particular angle, through a brain image
%
% ds 2018-08-26

%% make use of native niftiread to load in image

fname = ''   % some image

% addpath(genpath('~/matlab/mrTools'))
[Sraw, ~] = mlrImageReadNifti(fname);

% find a standard image in FSL distribution
% for R2018a we can use
% fname = '/usr/local/fsl/data/standard/MNI152_T1_2mm.nii.gz';
% Sraw = niftiread(fname);

%% convert image stored in UINT8/INT16 into double for use in Matlab

S = double(Sraw);


%% display in a new figure 1

figure(1)
slice(S, [], 50, 45)
shading('interp')
colormap(gray())
axis('vis3d')
axis('off')


%% now slice with arb surface

title('slices through standard MNI brain')