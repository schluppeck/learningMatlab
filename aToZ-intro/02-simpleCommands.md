# Simple commands

- Play around with the following commands just to get a feel for the command prompt, what error messages look like, etc.
- Keep notes on anything that you find surprising or that you don't understand.

**Useful operators, commands, and concepts for this unit...**

``pi``, ``( )``, ``[ ]`` ``:``, ``whos``, ``size()``, ``rand()``, ``mean()``, ``std()``, ``min()``, ``max()``, ``rem()`` (remainder after division), ``reshape()``, ``repmat()``, indexing, rows, columns

1. Make sure to ``clear all`` before starting on these exercises. Keep some notes on what's going on and try to understand each step and then move on to the next section
```matlab
a = [3, pi, 10, 1; 2 7 4 1]
b = 20:3:30
c = 2
```

2. Is the following allowed (correct synactically)? Why?:
```matlab
a .* c
a .* b
b .* c
d = a .* c
```

3. Given the variables ``a, b, c, d``, what about the following. Some of these are quite subtle, so make sure you understand:
```matlab
% indexing into a
a(:,2)
a(1,4)
a(1)
a(2)
a(9)
a(4,4)
a(4,4) = 1.2
a
% ... and b
b(3,1)
b(1,3)
```

4. Moving on to slightly larger vectors and matrices:
```matlab
% spot the difference here:
e = rand(100,1)
e = rand(100,1);
% now that we have this:
mean(e)
```
... and now for matrices:
```matlab
a
mean(a)
mean(a,1)
mean(a,2)
help mean
```

5. Other useful functions that "collapse across dimensions":
```matlab
median(e)
std(e)
max(e)
min(e)
```
... and we can also keep track of where the min/max occurred:
```matlab
[minValue minIndex] = min(e)
e(minIndex)
```

6. ... and some others that are useful with dealing with indices, counting, etc.:
```matlab
f = 1:100
rem(f,2) % remainder after division w/ 2
```
Not standard Matlab, but very useful helper functions from @justingardner
```matlab
isodd(f)
iseven(f)
```

7. See how you can turn 1..N into a repeating pattern:
```matlab
rem(f,3) + 1
rem(f+2,3) + 1
```

8. Turn a vector into a matrix by ``reshape()``:
```matlab
size(f)
reshape(f,[10 10])
reshape(f,[2 50])
reshape(f,[2 40])
```

9. Creating bigger vectors and matrices from smaller ones by tiling: ``repmat()``:
```matlab
repmat([1 2 3], 1, 5)
repmat([1 2 3], 5, 1)
```
