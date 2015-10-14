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

 **relop** | **meaning**          
 ----------|-------
 ``<``     | is smaller?          
 ``<=``    | is smaller or equal?
 ``>``     | is bigger?           
 ``>=``    | is bigger or equal?  
 ``==``    | is equal?            
 ``~=``    | is not equal?        
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
