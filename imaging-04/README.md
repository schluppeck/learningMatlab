## Aim

In this unit we write continue working on the linear regression example we have been building up to in the units 2 + 3 of the imaging part.

First, we need to modify the function ``makeDesignMatrix()`` that you worked on last time. We want to add 2 more columns to ``X`` inside your function:

1. a ramp from -1 to +1
2. a column of ones

These additional columns in the design matrix will capture any slow drift (1st additional column) and mean offset from 0 (2nd additional column). The logic of this will be discussed in class.

Next we will work on a function ``returnStats()`` that will allow us to do some statistical significance calculations / parametric stats.  The function should be called as  ``returnStats(y, X, c)``, where

- input arguments are:
	+ ``y`` is the timeseries data
	+ ``X`` is the design matrix
	+ ``c`` is a contrast vector

- finds: ``beta = X\y;``   using backslash
- *or* ``beta = inv(X'*X)*(X')*y;``
- finds: ``modelfit = X*beta;``
- finds: ``r2`` - the coefficient of determination
- calculates: ``t`` for contrast ``c``


## Some equations:

![Slide of equations](https://github.com/schluppeck/learningMatlab//imaging-04/significance.001.png)

![Model fit](https://github.com/schluppeck/learningMatlab/imaging-04/r2-values-009.png)


## Notes:
