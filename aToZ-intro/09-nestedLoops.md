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

<details><summary>Hint 1 - loop over rows</summary><p>

Step one is to think about how to loop over one dimension of this table... row 1, 2, ..

- How big is ``X``? Hard-code the number of rows

<code>
% how big is X?
size(X) % 6 by 6

for iRow = 1:6
   X(iRow, :)  % this picks each row in turn
end

% but better not to hard-code the number 6
nRows = size(X,1);
for iRow = 1:nRows
   X(iRow, :)  % this picks each row in turn
end
</code>

</p></details>

<details><summary>Hint 2 - loop over columns</summary><p>

Step two... the natural step is to try out the other way... we now need to put the index in the 2nd position!

<code>
nRows = size(X,1);
nColumns = size(X,2);

for iColumn = 1:nColumns
   X(:, iColumn)  % this picks each COLUMN in turn
end
</code>

</p></details>

<details><summary>Hint 3 - loop over both</summary><p>

Now, let's put those two things together. Read through the comments in the code and make sure you understand exactly what's happening. Draw a diagram of the matrix / table and indicate in which way the code steps through...

<code>
nRows = size(X,1);
nColumns = size(X,2);

% each time we go to a new row...
% we want then go through each column
for iRow = 1:nRows
    % loop over rows (this loop runs 6 times)
    % and each time we go to a new row (including the first)
    % step through each column... that ends up being a single element
    for iColumn = 1:nColumns
        % this loop runs 6 times for each row
        % so 6 x 6 times... 36
        X(iRow, iColumn)  % need to say which ROW and COLUMN
    end
end
</code>
</p></details><br>

2. How can you traverse across first? What changes are required in your code?

3. If you only wanted to have one loop, can you think of a way to traverse the whole matrix?
  - by using only one index?
  - by calculating the row and column numbers from the one counter?

<details><summary>Hint - linear indexing</summary><p>

Look up / google <emph>linear indexing</emph> and remind yourself how that can be used to "address" a particular element in the table/matrix.

</p></details><br>

4. Turn your code into a function that can handle 2D matrices of any size (square or rectangular).
  - bonus: add reality / error checks to make sure the input is really 2D
  - bonus: your function returns the sum of all elements (and as a second argument, the number of elements in the matrix)
<details><summary>Hint </summary><p>

Use <code>if/else</code> to check the number of dimensions; the command <code>ndims()</code> will help.

</p></details><br>

# Next

[Processing images](10-imageProcessing.md) - loading and modifying images.
