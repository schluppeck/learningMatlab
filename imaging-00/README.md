# imaging-00

In this unit we'll get to work with some imaging data (2d, 3d images) and see some of the matlab commands for interacting with and visualising it. Matlab has powerful functions / toolboxes to make this quite direct and I hope I'll be able to show you that you can achieve pretty amazing things with few lines of code -- as long as you know how to go about it (:smile:).

## Learning objectives

understand ...
- how *images* are represented in matlab
- how to display them, inspect different aspects
- the idea of *intensity* images, colormaps
- that there is a wealth of functionality available in the ``Image Processing Toolbox``
- that 3d images (volumetric data) is a natural extension of 2d images

## How are images represented?

You can think of images as a table of numbers. Consider this 3-by-4 example ``A``.

```Matlab
A = [10,20,30,4;
     22,51,72,89;
     4,100,0,9]
```

For larger images (tables with many rows and columns), looking at printed numbers becomes unwieldy. A much better way show this information is to show the numbers as little squares, also called ("pixels" for picture elements).

The following two lines of code

```Matlab
figure   % for a new window
image(A) % display A as an image
```

yield an image representation of the data in which each number is now represented as a colored pixel:

![small matrix image](image-of-small-matrix.png)

A few things to note:

0. the origin (1st row, 1st column of data) is shown in top left pixel. Compare this to how you think of a scatter plot
1. by default numbers are mapped to colors
2. the table that defines those colors is called a **colormap**.


## How to display images, inspect them

```Matlab

```


- how to display them, inspect different aspects
- the idea of *intensity* images, colormaps
- that there is a wealth of functionality available in the ``Image Processing Toolbox``
