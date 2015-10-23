
## Overall aim

Design and write code for a simple *orientation discrimination* experiment.

To remind you of the details, you can have a look back at the [summary of what we want to achieve](../behaviour-01/README.md)

## From last time

> By the next session you should be able to present your progress at the front of class for ~5min. You should have:
>
> [...]
>
b. you should also have written a function(s) to get the required information from both the experimenter ``getExperimentParams()`` and the subject ``getSubjectInfo()`` as outlined in points 3, 4, and 5 in the specification. We'll show your code snippets and get you to talk through it...
>
> [...]

The function definitions for those two functions should look something like the following. Remember that the function ``getExperimentParams()`` should return 3 things
- a string that contains a ``filename``, where you want to save your results, ultimately
- a number ``nTrials`` (or whatever you want to call it inside your function) that specifies how many trials we want to run.
- a vector (list of numbers), say, ``orientations`` that contains the orientations we want to pick from for our stimuli

```matlab
function [filename, nTrials, orientations] = getExperimentParams()
...
end
```

and for getting consent from the subject, a function that just returns one argument, a logical value that is either ``true`` or ``false``, specifying whether the subject has consented by pressing YES.

```matlab
function [hasConsented] = getSubjectInfo()
...
end
```

To see a worked solution of those two functions, you can look at the m-files in this folder.

## This session's aims

1. A quick overview of how to present stimuli (MGL, OpenGL basics) - have a look at [this super-quick intro to MGL](introToMGL.md)
2. Working on a function that initializes the screen and puts up a fixation cross at the centre of the screen:
``` matlab
function screenNumber = initializeScreen(screenNumber)
% initialize the screen for MGL
...
end
```
3. ... and a function the closes the screen (to be used at the end of the experiment). Optionally, it can display a "thank you message" before it closes the screen:
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


```
