# Loops and controls

## Logical variables

- So far: bits of code  get executed *once* with one set of inputs
- sometimes want to do some things in certain *conditions*
- and often we want to do (similar) things *many times over*
- at the heart of this lie **logical** variables, **branching** and **loops**

To control this kind of behaviour, one thing we need to be able to test whether certain conditions are met. Matlab has a type of variable for this called a ``logical`` value:

- logical values: ``true`` and ``false``
- these are actually *functions* like ``ones()``
```matlab
>> a = true(2,10) % 20 truths ;
```

- ``0`` and ``false`` are equivalent
- non-``0`` and ``true`` are equivalent
- test for logical equivalence with ``==`` :
```Matlab
>> 2 == 5       % is this true?
>> (2+3) == 5   % ... and this?
>> (2 == 5) == false   % what's this?
```

Logical variables, sometimes also called "booleans", store whether a condition is "true" or "false", 1 or 0. You can check whether one value is the same as another with the ``==`` operator, but there are also many other comparisons you can make. In Matlab-speak these are called *Relational Operators*.

| **relop** | **meaning**          |
|:----------|:---------------------|
| ``<``     | is smaller?          |
| ``<=``    | is smaller or equal? |
| ``>``     | is bigger?           |
| ``>=``    | is bigger or equal?  |
| ``==``    | is equal?            |
| ``~=``    | is not equal?        |
 -----------------


## Combining logical values

- to test whether A **and** B are true: ``A && B``
- ... A **or** B are true: ``A || B``
- ``&&`` and ``||`` are binary operators
- such as:
```matlab
a = rand(1); % one random number between 0,1
% the following is true if 0.3 < a < 0.7
closeToMiddle = (a > 0.3) && (a < 0.7)
```

## if/else


To run a part of your script only if some condition is met, we can use a logical "fork in the road". There are several ways to do this, but probably the most important one is ``if/else``. The following is a small code snippet that illustrates what's going on here. The variable ``a`` gets a random value from the call to ``rand()``. Every time you run this code, you'll get a different random number (!). The ``if`` statement checks whether ``(a > 0.5)`` is true; if yes, then the code snippet just below it is executed; ``else`` the code in the other block is run:

```matlab
% make a random number between 0, 1
a = rand(1)

% now test if this time it is > or < than 0.5
if a > 0.5
  disp('chance favours the prepared mind')
else
  disp('uhoh!')
end
```

Another example would be to check an input that someone has given at the command prompt. Here is a modified version of what appears in the help for the ``input()`` function:

```matlab
reply = input('Do you want more? Y/N [Y]:','s');
if isempty(reply) || strcmp(reply, 'y')
  % if the reply variable is empty
  % or if the string comparision with lowercase 'y' is true
  reply = 'Y';
end
```

... and finally, using the trick of setting a variable to an initialization value of ``-1`` (which has a special meaning that you can test) with ``if/else``:

```matlab
if nSubjects < 0
  disp('number of subjects ill-defined')
elseif nSubjects == 0
  disp('there were 0 subjects')
else
  disp(['there were ' num2str(nSubjects) ' subjects' ])
end
```


## for loops

Together with branching (``if/else``), using ``for`` loops probably forms one of the most useful aspects of programming in Matlab (and other languages). For many tasks that you want to complete, being able to repeat the same action many times with a compact set of commands makes it a very powerful tool. Just imagine a situation where  something has to be done 1000 times either by a set of key strokes and maybe copying and pasting, say in Excel, or by issuing a command like ``runMyScript`` at the Matlab prompt... :

```matlab
% the syntax is quite simple:
for loopIteration = 1:10
  % on each interation, the variable
  % loopIteration takes on the next value on list
  disp('The current loop count is:')
  loopIteration
end
```

The key to making this work is to define clearly (but flexibly) what needs to be done over and over again. You may have to work out what it is that changes on each iteration and what needs to be repeated.

One common use for loops is to load in a whole bunch of data files from psychophysics or imaging experiments and then to group data together that way. See the Appendix_ for an exercise on exactly that.

Also keep in mind:

- allocate space for variables you need to fill **before** loop
- don't "grow" arrays (it's memory & time costly)
- try to define the limits of your loop with variables:

```matlab
  for iCounter = 1:10 % AVOID
    ... % and so on
  end

  nIterations = 10; % BETTER
  for iIteration = 1:nIterations
    ... % and so on
  end
```

The version using ``nIterations = 10`` is much better, because it allows you to make other bits of your code depend on that number too (but stored in a variable). So if you change your mind later and want to iterate over 100 values instead, you can simply change things in one place.

# Next

[Debugging other people's code](07-debugTheCode.md) - find the problem.
