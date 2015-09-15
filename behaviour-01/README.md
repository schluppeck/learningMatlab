# Overview

## Aim

Design and write code for a simple *orientation discrimination* experiment.

1. The code must run on Mac OSX with the lab computers.

2. The program must start with the experimenter typing ``oriDiscrim()`` at the command prompt.

3. All information from the experimenter must be collected with the keyboard from the command line or as input arguments to the function.

4. All information collected from the subject prior to the beginning of the experiment must be presented and collected through the use of graphical user interfaces (GUIs), but once the experiment starts subjects should respond with single key presses on the keyboard.

5. Before beginning data collection the program must confirm that the subject has given informed consent to participate.

6. **On every trial** a stimulus with a randomly chosen orientation should be presented to the subject. The program should allow the experimenter to specify the possible orientations of the stimulis and the total number trials. On every trial the subject must respond if the stimulus was rotated anti clockwise or clockwise from vertical. The subject should have unlimited time to respond and the stimulus should remain on the screen until the subject makes a response. The subject should not receive correct answer feedback or any other type of feedback.

7. After data collection the data should be saved in a file with a name specified by the experimenter.

8. Further, the program should fit and plot a psychometric function, based on a cumulative normal to the probability of responding clockwise as a function of the orientation. From this fitted function the bias and threshold should be displayed on the screen.

## Notes

- You can make the stimulus program you write work with Windows as well, if you really prefer, but MGL was written for OSX (Mac) and Linux - see http://gru.stanford.edu/mgl/ for details.

- the stimulus can either be an oriented line, elongated gaussian blob or a gabor. We'll talk through details of how to achieve each.


##Today's (first session) objectives

During this session you should begin to develop an overall framework for the experimental code. In your groups, discuss the overall structure of the problem. At this point it's more important to make an overall plan of how you are going to tackle the problem, rather than obsessing over details of how you can achieve each sub-goal and implement them in Matlab.

- **How can you break the big problem down into several smaller ones?** - to guide you in this, you should create a list of what functions need to be written that includes documentation about what processing the function does along with the input and output arguments. Use paper & pen, the whiteboard & marker pens to make some diagrams on how you imagine the overall structure of your program

- One useful strategy is to think about each problem as a box that can be solved by a little black box (ultimately a *function*). What information would that little box need to have to achieve its goal and would it produce some additional information? And what does it produce / return? Does it have a side-effect?

- By the next session you should have:

a. the wrapper function ``oriDiscrim()`` that calls the functions that achieve your sub-tasks in your list in the correct order.

b. you should also have written a function(s) to get the required information from both the experimenter ``getExperimentParams()`` and the subject ``getSubjectInfo()`` as outlined in points 3, 4, and 5 in the specification.

c. "dummy" functions for all other tasks. Basically, functions that you can call (without getting an error) but that don't achieve very much yet. To state your intent, you can maybe add some placeholder code that will just let you know that the function will ultimately do, e.g.::

  ``disp('This function will display an oriented stimulus when it is grown-up...')``


##Some useful commands

Use the matlab help and documentation system to find out about the following

```matlab
doc function
struct
input
inputdlg
questdlg
str2double
strcmp
disp, sprtinf, fprintf
```
