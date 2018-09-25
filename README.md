# learningMatlab

## What's this?

Materials and exercises from the *Introduction to Matlab Programming* course.

For **viewing** the materials use: <a href="http://schluppeck.github.io/learningMatlab/">
http://schluppeck.github.io/learningMatlab/</a>

For inspecting the code and details: <a href="https://github.com/schluppeck/learningMatlab">https://github.com/schluppeck/learningMatlab</a>

## Get me started!

The first place to check out is the [aToZ-intro](aToZ-intro)

Find PDF materials in one place in the [matlab primer](aToZ-intro/c84nim-exercises.pdf)

## Who is it for? What are the aims?

The course materials started out for a graduate course for psychologists and neuroscientists. The main aims is to help the students to get to grips with the basic ideas of computer programming and, more specifically, the use of Matlab. At the same time, the exercises draw on material / requirements from other courses and may give the opportunity for hands-on revision of some important concepts (time series data, linear/non-linear regression, etc.). The syllabus is for a 10 week (10 x 2h) lab class, assuming very little computer experience (or maths) at the start.

Feel free to use the code. I accept donations in the form of freshly roasted coffee beans.

The structure of the course was designed to have 3 chunks. Schluppeck has been tinkering with the course more recently.

1. an introduction to the basic ideas (variables, functions, control flow) - running over **the first 4 weeks**. Check out the material in the **aToZ-intro** folder and the associated [readme file here.](aToZ-intro)
2. **Timetable A**. An **alternative** project, building some basic utilities / functions for looking at neuroimaging data and performing linear regression (GLM), **6 weeks**. Details on the imaging-related units is outlined in [here.](imaging-01)
3. **Timetable B**. A hands-on group project, designing and programming up a simple, but working, behavioural experiment, **6 weeks**. A brief overview of this part of the course is in the [in the behaviour section.](behaviour-01)


## Timetable A (around a looking at images, 3d data, ...)

| Week | Unit                     | Topic                                                     |
|:-----|:-------------------------|:----------------------------------------------------------|
| 1    | [aToZ-intro](aToZ-intro) | What is Matlab, the environment, variables, indexing, ... |
| 2    | [aToZ-intro](aToZ-intro) | Types of data: numeric, logical, text, etc.               |
| 3    | [aToZ-intro](aToZ-intro) | Indexing, looping, branching, functions, ...              |
| 4    | [aToZ-intro](aToZ-intro) | Understanding someone else's code                         |
| 5a   | [imaging-00](imaging-00) | What are images? How to display them                      |
| 6a   | [imaging-01](imaging-01) | Building / fixing up a simple image viewer                |
| 7a   | [imaging-02](imaging-02) | A function that constructs a simple design matrix         |
| 8a   | [imaging-03](imaging-03) | Hands-on linear regression (using a sample timecourse)    |
| 9a   | [imaging-04](imaging-04) | Doing regression *stats*, displaying                      |


## Timetable B (around a stimulus presentation program)

| Week | Unit                         | Topic                                                                                   |
|:-----|:-----------------------------|:----------------------------------------------------------------------------------------|
| 1    | [aToZ-intro](aToZ-intro)     | What is Matlab, the environment, variables, indexing, ...                               |
| 2    | [aToZ-intro](aToZ-intro)     | Types of data: numeric, logical, text, etc.                                             |
| 3    | [aToZ-intro](aToZ-intro)     | Indexing, looping, branching, functions, ...                                            |
| 4    | [aToZ-intro](aToZ-intro)     | Understanding someone else's code                                                       |
| 5b   | [behaviour-01](behaviour-01) | Overview: building a simple psychophysical experiment; info from experimenter & subject |
| 6b   | [behaviour-02](behaviour-02) | Making a stimulus and putting it up on the screen                                       |
| 7b   | [behaviour-03](behaviour-03) | Getting responses from the subject & fine-tuning                                        |
| 8b   | [behaviour-04](behaviour-04) | Analyzing the behavioural data, fitting and plotting                                    |


## How to get these materials

Assuming you are on a Mac: open up a ``Terminal`` (double-click /Applications/Utilities/Terminal). Then do the following:

```shell
# if you don't already have one: create a ``matlab`` directory in your home space (``~``), then change directory to it:
cd ~
mkdir matlab
cd matlab
# get MGL (for the behavioral project)
git clone https://github.com/justingardner/mgl.git
# get these tutorials
git clone https://github.com/schluppeck/learningMatlab.git
```

You'll need to add both these subfolders to your path; then you should be good to go. A convenient way to do this is to run this or add this to your ``startup.m`` file:

```matlab
addpath(genpath('~/matlab/'))
```

## Grabbing updates

To make sure you have any updates to this material, open a Terminal, change directory to the ``learningMatlab`` folder and issue ``git pull``. This will sync you the material on github. Alternatively, download the zip archive of the repository.

## Notes

- In the 2015/2016 iteration of the course, I modified the hands-on project for building a simple behavioural task to use **mgl** (https://github.com/justingardner/mgl). Although this requires teaching a couple more details on how stimuli are being displayed by the OpenGL machinery and it's not pure Matlab, it's (a) more realistic and (b) makes displaying different kinds of stimuli, obtaining keyboard responses, etc. much more fun and doable.

## Contact

<a href="https://twitter.com/schluppeck">https://twitter.com/schluppeck</a>
