# Plotting data

Let's write a script to do the following things in sequence (include **comments at each step!**):

+  create a variable ``n`` with a value of 20
+  a vector ``t`` containing ``1`` to ``n`` (in steps of 1)
+  a vector ``sig`` that is equal to ``0.3`` times the square of ``t``
+  use ``figure`` to pop up a new figure window
+  use ``plot()`` to plot ``sig`` as a function of ``t``
+ Use a semicolon (``;``) to end each line (to suppress unwanted output)


```matlab
>> doc plot  % if in doubt check help
```


## more plotting...

There are many plotting / graphing related functions. Briefly play around with the following:

- ``xlabel()`` , ``ylabel()`` , ``title()``
- you can provide *string* to them in single quotes 'like this'. The single quotes are the way to define character strings. Ultimately, they can of course also be stored in variables.

- You can specify the linestyle and symbols for the plot easily:
```matlab
plot(t, sig, 'rs-' ) % red, square symbols, solid line
```

- There is also a way to create two plots on the same axes at the same time:
```matlab
plot(t, sig, 'rs-', t, sig./2, 'b:' )
```

The ``plot`` command is very versatile and you'll see people use it in many different ways. If you read the help/documentation for the command you'll see that the first/normal use is to provide both ``x`` and ``y`` coordinates for the points you want to plot, e.g.:

```matlab
x = 1:10;
y = rand(1,10); % 10 random numbers
plot(x,y) % simple plot
plot(x,y, 'rs--') % plot with line style
%
y2 = rand(1,10); % another 10 numbers
plot(x,y, 'rs--', x,y2, 'bo-') % two plots in one
```

## Function exercises

- Write a function ``myPlot()`` that takes two input arguments and returns *no* output argument. All the function should do is to use the matlab ``plot()`` command as per usual, but with your preferred properties for the plot. Look at ``help plot`` to get some inspiration, but inside your function you might want to try to use, e.g. the properties

```matlab
'linewidth', 2   % or whichever thickness you like
'color', [1 1 0] % or some other color triplet in red, green, blue
'markersize', 15
'marker', 's'

```


# Next

[Loops, if/else, controlling flow](06-loopsAndControls.md) - loops and controls
