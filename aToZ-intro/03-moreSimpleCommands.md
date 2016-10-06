#  More simple commands


**Useful operators, commands, and concepts for this unit...**

``rand()``, ``round()``, ``floor()`` (round down), ``ceil()`` (round up), ``repmat()``, random numbers, random ordering of numbers

1. Make sure to ``clear all`` before starting on these exercises. Keep some notes on what's going on and try to understand each step and then move on to the next section
  ```matlab
  x = 1:10
  e = rand(1,10)
  s = x+e
  ```

2. Different functions for rounding (to the nearest integer):
  ```matlab
  % single numbers
  round(0.5)
  round(0.49)
  round(0.51)
  % ... and vectors
  round(e)
  round(s)
  % and a slightly different ways
  floor(s) % to the nearest integer down
  ceil(s)	 % to the nearest integer up
  ```

3. Create a column vector ``r`` of size 100 that contains randomly chosen ``0`` or ``1``, each with equal probability.

4. Create another column vector ``s`` of size 100 that contains randomly chosen ``0`` (with p=0.3) and ``1`` with p=0.7).

5. Look at the help for the function ``randperm``. Create a randomly permuted vector ``idx`` of size 10, and a vector ``q`` that contains 5 zeros followed by 5 ones. Can you think of a simple way to permute the entries ``q`` using ``idx``.

6. Now repeat the previous exercise but re-write the code such that the size of ``idx`` can be controlled by a variable ``n``. Are there any things to watch out for here?

7. Find a way to make a matrix ``X`` that has 50 rows and 3 columns. Column 1 should contain 1..50. Column 2 should contain 1^2..50^2 and Column 3, √1..√50.


##  Next

[Scripts and functions](04-scriptsAndFunctions.md) - why they are useful, how they work.
