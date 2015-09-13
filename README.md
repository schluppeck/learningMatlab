# c84nim  

## What's this?

Materials and exercises from the *Introduction to Matlab Programming (C84NIM UK)* course - part of the MSc Brain Imaging at the University of Nottingham.

## Who is it for?

The course materials were developed for the students on the MSc Brain Imaging course at The University of Nottingham. The main aims is to help the graduate students to get to grips with the basic ideas of computer programming and, more specifically, the use of Matlab. At the same time, the exercises draw on material / requirements from other modules on the course and give us the opportunity for hands-on revision of some important concepts (time series data, linear/non-linear regression, etc.).  The syllabus is for a 10 week (10 x 2h) lab class, assuming very little computer experience (or maths) at the start.

Feel free to use the code. I accept donations in the form of freshly roasted coffee beans.

The structure of the course was designed by us (Dan Shub, now at Walter Read, www.wrnmmc.capmed.mil; and Denis Schluppeck) to have 3 chunks.

1. an introduction to the basic ideas (variables, functions, control flow) - running over **the first 2 weeks**
2. a hands-on group project, designing and programming up a simple, but working, behavioural experiment, **4 weeks**
3. a second project, building some basic utilities / functions for looking at neuroimaging data and performing linear regression (GLM), **4 weeks**

## Possible timetable

| Week  | Unit  | Topic        |
| ----- | ------------- | ----|  
| 1     | Intro |  What is Matlab, the environment, variables, indexing, ...  |
| 2     | Intro |  Logical variables, indexing, looping, branching, functions, ... |
| 3     | Behaviour | Overview: building a simple psychophysical experiment; info from experimenter & subject  |
| 4     | Behaviour | Making a stimulus and putting it up on the screen  |
| 5     | Behaviour | Getting responses from the subject & fine-tuning   |
| 6     | Behaviour | Analyzing the behavioural data, fitting and plotting  |
| 7     | imaging | Building / fixing up a simple image viewer |
| 8     | Imaging | A function that constructs a simple design matrix  |
| 9     | Imaging | Hands-on linear regression (using a sample timecourse)  |
| 10     | Imaging | Doing stats   |


## Notes

- In the 2015/2016 iteration of the course, I have modified the hands-on project for building a simple behavioural task to use **mgl** (https://github.com/justingardner/mgl). Although this requires teaching a couple more details on how stimuli are being displayed by the OpenGL machinery and it's not pure Matlab, it's (a) more realistic and (b) makes displaying different kinds of stimuli, obtaining keyboard responses, etc. much more fun and doable.


## Contact

denis.schluppeck@nottingham.ac.uk
