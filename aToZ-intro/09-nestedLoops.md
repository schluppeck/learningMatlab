# Nested loops

## What happens when you nest loops?

1. Given a 2d array (matrix) X, write two nested ``for`` loops that traverse it and ``disp``lay the value and indeces on the command prompt

```matlab
% the details of what X exactly represents are not that important here ;]
h = [1 2 3 9];
X = convmtx(h,6)
```

Your nested ``for`` loops should produce something like:

```
row=1, column=1, VALUE: 1
row=2, column=1, VALUE: 0
...
row=3, column=4, VALUE: 2
...
row=6, column=6, VALUE: 9
```

2. How can you traverse across first? What changes are required in your code?

3. If you only wanted to have one loop, can you think of a way to traverse the whole matrix?
  - by using only one index?
  - by calculating the row and column numbers from the one counter?

4. Turn your code into a function that can handle 2D matrices of any size (square or rectangular).
  - bonus: add reality / error checks to make sure the input is rally 2D
  - bonus: your function returns the sum of all elements (and as a second argument, the number of elements in the matrix)

# Next

[Processing images](10-imageProcessing.md) - loading and modifying images.
