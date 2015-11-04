
## Overall aim

Design and write code for a simple *orientation discrimination* experiment.

To remind you of the details, you can have a look back at the [summary of what we want to achieve](../behaviour-01/README.md)

## From the last time (and the time before)

Inspect the m-files ``initializeScreen.m`` and ``closeScreen.m`` for my worked solution to last week's aims. These functions are really quite small, but it's worthwhile to make them and to abstract out this functionality (a) so we are explicit about what's happening in our code and (b) because it's easier to reuse code this way

Together with the functions from the first session, we now have the following functions:

``` matlab
% get info from experimenter + subject
[filename, nTrials, orientations] = getExperimentParams()
function [hasConsented] = getSubjectInfo()

% open a screen and close a screen
screenNumber = initializeScreen(screenNumber)
closeScreen()
```

We are now in a position to go back to our initial plan and build up the general logic of the program.

<img src="https://github.com/schluppeck/c84nim/blob/master/behaviour-01/flowChart.png" height="500">

## This session's aims


- Let's make the function ``presentTrial()``
``` matlab
% decide on the function "interface" - inputs and outputs
% initialize the screen for MGL
...
end
```

## Helpful commands

Try looking up help for the following things

```matlab
help mgl
```
