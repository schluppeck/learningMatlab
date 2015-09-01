# imaging-01

## Aim

In this unit we complete the ``sliceview()`` program so that it can work like the solution I have provided. In order to get this to work, you'll need to write a function called ``returnSlice()`` that does the following:

```matlab
s = returnSlice(array, sliceNum, orientation)
```

- ``s`` should be a 2d array (a slice)
- ``sliceNum`` is the slice we want to get out in
- ``orientation`` (1, 2, or 3 for now)

What are the things to worry about / check to make sure this function is robust and does the right thing?

## Notes

- check the ``interact.m`` program to see how we can attach interactivity to the matlab figure window
- ``sliceview.m`` is the nearly complete program... all it's missing is the functionality of ``returnSlice()`` - you can either provide this as a separate file (the way you are probably used to) or inside the ``sliceview.m`` file itself. 
 