# learningMatlab


<img src="learningMatlab-splash.png" width="80%">


## What's this?

Materials and exercises from the *Introduction to Matlab Programming* course which forms part of our [*MSc Cognitive Neuroscience*](https://www.nottingham.ac.uk/pgstudy/courses/psychology/cognitive-neuroscience-msc.aspx).

For **viewing** the materials use: <a href="http://schluppeck.github.io/learningMatlab/">
http://schluppeck.github.io/learningMatlab/</a>

For inspecting the code and details: <a href="https://github.com/schluppeck/learningMatlab">https://github.com/schluppeck/learningMatlab</a>

## Preliminaries

- :ballot_box_with_check:  **Create a (free) account at [The Mathworks](https://uk.mathworks.com/mwaccount/register).** Using your university e-mail address will allow you to use the university's academic license. As an added bonus, you'll be able to install Matlab on your own computer / laptop (MacOS, Windows, or Linux)

- There is a self-directed **Matlab onramp** course that we will refer to during the course. This includes some short videos and interactive lessons, which we will use to [flip the classroom](https://en.wikipedia.org/wiki/Flipped_classroom).

- :ballot_box_with_check: **Before the first lab-class, you should have a go at sections 1 to 3** of [this onramp course](https://matlabacademy.mathworks.com/R2019a/portal.html?course=gettingstarted). The sections should't take too long complete.
<img src="onramp.png" width="50%" alt="screenshot of matlab onramp" caption="Screenshot of onramp course">

## Get me started on the material here!

1. The first place to check out is the [aToZ-intro](aToZ-intro). Run through these exercises on the lab machines (or on your own copy of Matlab).

2. Find PDF materials in one place in the [matlab primer [PDF]](aToZ-intro/c84nim-exercises.pdf)

## Who is it for? What are the aims?

The main aims is to help the students to get to grips with the basic ideas of computer programming and, more specifically, the use of Matlab.  The course materials started out for a graduate course for psychologists and neuroscientists.

The exercises draw on material that students on our *MSc* courses encounter in other modules. It's therefore a great opportunity for hands-on revision of some important concepts such as

- time series data
- images in 2d and 3d
- linear/non-linear regression

The syllabus is for a 10 week (10 x 2h) lab class, assuming very little computer experience (or maths) at the start.

Feel free to use the code. If you feel it's particularly helpful to you... I accept donations in the form of freshly roasted coffee beans.

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

- [getting started with examples](https://uk.mathworks.com/help/matlab/examples.html?s_tid=acb_mlex) - a collection of beginner friendly examples in the Matlab documentation.
- The sections should't take too long complete.

- getting a certificate of your Matlab ONRAMP course progress / completion"
<img src="onramp-progress.png" width="60%" alt="screenshot of matlab onramp" caption="Screenshot of onramp course">

## Colophon

- In the 2015/2016 iteration of the course, I modified the hands-on project for building a simple behavioural task to use **mgl** (https://github.com/justingardner/mgl). Although this requires teaching a couple more details on how stimuli are being displayed by the OpenGL machinery and it's not pure Matlab, it's (a) more realistic and (b) makes displaying different kinds of stimuli, obtaining keyboard responses, etc. much more fun and doable.

- In the 2017 iteration, students built a psychophysical experiment (slightly different task, but similar in spirit)

- In 2018, the assignment for the course was complete and extend an analysis script for fMRI data by writing some helper functions. Students were also using ``pusblish()`` to explore documentation and mixing code with report writing.

## Contact

<a href="https://twitter.com/schluppeck">https://twitter.com/schluppeck</a>
