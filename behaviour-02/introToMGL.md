# Quick intro to MGL

## What is it? Where can I find info?

MGL is a library of functions that work from within Matlab to draw graphics, images, shapes into a specially created window. It uses/wraps the most commonly used graphics standard ([OpenGL](https://www.opengl.org)). Timing is very good and you can finely control getting input from the keyboard, mouse, and other devices. It also hooks up very neatly to different kinds of eye trackers and has some other nice features making it a good choice for programming up stimuli for experiments. [From the MGL website](http://gru.stanford.edu/doku.php/mgl/overview):

> mgl is a set of matlab functions for displaying full screen visual stimuli from matlab. It is based on OpenGL functions, but abstracts these into more simple functions that can be used to code various kinds of visual stimuli. It can be used on Mac OS X systems [...]
> http://gru.stanford.edu/doku.php/mgl/overview

## What's the basic idea behind drawing stimuli?

Here is a very basic description of what happens when you draw graphics to the display (in the OpenGL drawing model):

- you open a "context" for drawing things into, which gives you access to a *buffer*. This is the place that contains things that will be drawn by the graphics card of your computer. There are many kinds of *buffers*, but usually we only care about two specific ones: the **front buffer** and the **back buffer**.  (Look here for [more details on buffers](https://www.opengl.org/wiki/Default_Framebuffer)).
- The most important aspect of this setup is that you have 2 buffers: the **front** one that gets displayed on the screen, and the **back** one, into which you can draw without disturbing what's currently on the screen.
- so: you have a few milliseconds to draw into your **back buffer**, then you **flip** them (front becomes back, and back becomes front), and now you can use the other one to do your next bit of drawing...

## How to do this in MGL

If you have MGL installed properly (try ``help mglOpen`` and see if you get any help returnd on the command line), you can try the following

```matlab
% open a screen (and associated "context")
mglOpen(0)

% change the coordinate frame, so we can specify
% everything in degrees of visual angle, rather than
% pixels
mglVisualAngleCoordinates(57,[16 12]);

% clear the background to a gray
mglClearScreen([0.5 0.5 0.5])

% draw a rectangle at 0,0 with w=2, h=4
% and color (RGB) [0 1 1]
mglFillRect(0, 0, [2 4],  [0 1 1]);

% now swap out the buffers, so we can see what we have drawn
% in the back buffer
mglFlush();

% some time later, close the window
mglClose()

```

Return to [the description of this week's aims](README.md)

## Links

- The [MGL website](http;//gru.stanford.edu/mgl)

- Some detailed [information about OpenGL](https://www.opengl.org). You can also find lots and lots of tutorials via google and youtube.

- Wikipedia article on [visual angle](https://en.wikipedia.org/wiki/Visual_angle)
