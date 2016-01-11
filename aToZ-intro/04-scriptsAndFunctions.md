#  Scripts and functions

## A quick overview of how **scripts** work:

Matlab is an interpreted language. So far, you've just been working at the command prompt of the interpreter, feeding Matlab one command after another. Often you want to save a record of what what you did and make what you have done repeatable

- all commands entered on the command line can be stored in a text file
- a script will be executed line by line (sequentially)
- convention for filename: ``someNameYouLike.m`` (``.m`` ending)
- when you want to run the script from the command line, then you can call it by its filename (without the ``.m`` ending):
```matlab```
>> someNameYouLike
```

- these files are just simple text files and you can edit them in any editor you like (TextEdit, WinEdit, emacs, vim, SublimeText, ...)

- but the **Matlab Code Editor** has some nice features that help you write better code, so I recommend you explore using it. I used to be a dyed-in-the-wool ``emacs`` user, but recently have switched to the Matlab editor for writing Matlab code because, in my opinion, it gives a much better overall experience.

Scripts are really the first step in making things you have to do over and over again much more tractable. Imagine a situation in which you have to run the (nearly) same sequence of 10 or 15 commands several times over. There are many problems with this, but the most striking ones are:

1.  **It seems like a waste of time.** Why do something essentially by hand, if that's the dull work a computer should really be doing for us?

2.  **Repeating steps by hand is error prone**. If you have to repeat a complicated sequence many times, it's likely you'll make mistakes - better to get the sequence correct once and let the computer do the repeating.

## Simple, quick exercises for **scripts**:

1. Write a script ``ccc.m`` (with appropriate documentation) that issues ``close all`` followed by ``clear all``. This will allow you to reset the workspace for a clean start. I have such a script and I use it *all the time*.
2. Think about some things you need to do all the time for your work. Specific things to think about: are there things that require you to type the same commands several times over (say, for each subject in one of your experiments, or every time you start an analysis session). Do you copy/paste columns in Excel in the same way for many different files? Can you think of a way in which these tasks might be scriptable?
3. Write down one example (in outline) of a task that you could script - we'll share them at the end of the practice session.


## Functions

Let's next consider **functions**. Functions are similar to scripts in some ways, but ultimately much more powerful. Like scripts, they can be used to execute a sequence of steps, but for functions we also define a set of inputs and outputs. In this way, functions isolate the data they work on: you pass data inside a function through its **input arguments** (zero to many) and it returns the result of its operation in its **output arguments**. So a useful analogy for a function is a little black box that has some number of inputs that works on them and returns some number of outputs. Once you have defined the function you can reuse it easily and as often as you want.


*Scripts* don't isolate their functionality in this way, but make use of the variables in the main workspace (the general memory available from the command line). This makes scripts much harder to reuse.

- create a new **m-file** (e.g. File -> New -> Function)
- define interface: what are the **inputs** and **outputs**:

```matlab
function output = myFunction(in1, in2)
% myFunction - short description of what it does
%
% Documentation block

% code that uses input arguments to produce output
% !! whatever is the first input argument
% when function is called will be "in1" inside the function,
% whatever is second, will be "in2" inside the function

output = ( in2 - in1 ) ./ ( in1 + in2);

end
```

- (don't be tempted to use ``input`` as a variable name, why?)

### Some function nitty-gritty

There are two things to note (for those interested in the details):

1. Operators are really also functions. So the binary ``+`` operator in ``1+2`` (which operates on two things) is really the same as ``plus(1,1)`` - see [some discussion on stackoverflow.com](http://stackoverflow.com/questions/22678231/matlab-operators-as-functions)

2. You may see people use two different ways of calling Matlab functions. They are actually referred to as "function syntax" and "command syntax" in the documentation.

*Command syntax* (old-style) looks like this:
```matlab
>> someCommand bla   % bla is in the input argument
>> someCommand bla anotherBla andMore  % with 3 inputs
```

*Function syntax* (new, and much preferred) looks like this:
```matlab
>> someCommand(bla)   % bla is in the input argument
>> someCommand(bla, anotherBla, andMore)  % with 3 inputs
```

You may have noted that even though ``help`` is a Matlab function, we didn't need to specify the parentheses to get it to work. This is because we were really calling it using the command syntax above. For writing programs and in general, it's much better, more transparent, and less error prone to use function syntax everywhere.

## Function exercises

- Write a function ``reverseMe()`` that takes one input argument and produces one output argument. The output should be a reversed version (either rightside-left or upside-down) of the input. So:

```matlab
reverseMe( [1, 2, 3, 4] ) % should return

ans =
  4 3 2 1

reverseMe( [1; 2; 3; 4] ) % should return
ans =
  4
  3
  2
  1

```

and if you write it correctly, it will automagically work on strings, too:
```matlab
reverseMe( 'this is pretty cool!' ) % should return

ans =
!looc ytterp si siht
```
- *Hint!* Think about the order of indeces for a vector of numbers (or a string, which is really just a vector of characters). Normally they are laid out in the order ``1...n``, where ``n`` is the lengthe of the vector. How can you make an index that contains ``n...1``. The ``:`` (colon) operator should come to the rescue.

- If you get stuck, try to write down in comments how you would go about doing it and discuss with your neighbour in the labclass...


We'll combine some more exercises on writing functions with some plotting in the next section.

# Next

[Plotting data](05-plottingData.md) - making simple plots.
