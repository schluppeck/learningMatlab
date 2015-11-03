
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

- A quick overview of how to present stimuli (MGL, OpenGL basics) - have a look at [this super-quick intro to MGL](introToMGL.md)
- Working on a function that initializes the screen and puts up a fixation cross at the centre of the screen:
``` matlab
function screenNumber = initializeScreen(screenNumber)
% initialize the screen for MGL
...
end
```
- ... and a function the closes the screen (to be used at the end of the experiment). Optionally, it can display a "thank you message" before it closes the screen:
```matlab
function closeScreen()
% closeScreen - close the MGL screen and say bye!
...
end
```

## Helpful commands

Try looking up help for the following things

```matlab
help mglOpen
mglTestDots(0)
edit mglTestDots % look at the code
