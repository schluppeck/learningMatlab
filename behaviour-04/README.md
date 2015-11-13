
## Overall aim

Design and write code for a simple *orientation discrimination* experiment.

To remind you of the details, you can have a look back at the [summary of what we want to achieve](../behaviour-01/README.md)

## Putting it all together + analyzing the data

In this session, we will put together all of the pieces we worked on during the last 3 weeks (if you haven't already done it). Last time, you designed and worked out a function ``presentTrial()``. You had to make some decision on what the inputs and outputs of the function should be. One thing to think about in particular is, if you want(ed) to handle randomization of trial order / orientations, etc. inside the function (or outside of it, in which case you'd have to do that in the main ``oriDiscrim()`` code).


Let's make the function ``presentTrial()``
``` matlab
% decide on the function "interface" - inputs and outputs
% initialize the screen for MGL
...
end
```

## ... one possible way to put the whole thing together

The function ``oriDiscrim()`` (in its own m-file) . This will be the main function that drives the experiment. It will contain the logic shown in the diagram above and call all the appropriate functions that we have written so far.

**For the first part of this session, we will work on this.**


```matlab
function oriDiscrim()
% oriDiscrim - a simple orientation discrimination experiment + data analysis
%
%    program prompts experimenter for a - filename to store information;
%                                       - nTrials (number of trials)
%                                       - orientations (range of orientations)
%
%    subject needs to consent, if yes, the code starts running through the
%    trials in a randomized order. subjects have to press '1' or '2' for CCW, CW
%
%    at the end, a summary of the trials, and proportion or trials reported "CW"
%    is plotted - info is saved out to "filename"
%
%    see also: getExperimentParams, getSubjectInfo, presentTrial
%
% 2015/11/06 - ds - written

% get info
[filename, nTrials, orientations] = getExperimentParams()

% get consent
[hasConsented] = getSubjectInfo()

% deal with whether subject has consented right here
if hasConsented == false
  disp('(!) subject has not consented - exiting')
  % return from the main function...
  return
end

% sort out details of the trials we want to show
% ...

% a big for loop that displays one trial after the other
for iTrial = 1:nTrials

  % main presentation loop running presentTrial()

end

% ... the final bits:
% - save it out to filename!

end
```

## Plotting and analyzing the data

Once we have finished off the ``oriDiscrim()`` function, you can now try and run it and actually collect some data. If your function / program runs correctly, it will save out some data in a file and we can now look at the final steps: plotting and interpreting the data. This will hopefully also include fitting a curve to it.

### Sorting the responses into what we need

One of the things we need to do is to sort the data that we collected during the experiment and represent it in a way that will be nice for plotting and fitting later. Remember that for each trial (of which there were, say, ``n`` ), we have an orientation (stored in e.g. ``oriByTrial``) and whether the participant responded **ccw** (1) or **cw** (2), stored in e.g. ``responseByTrial``. These variables contain something like this:

```matlab
oriByTrial = [-0.5,  -10.0, 5.0, 10.0, 0, 0 ...]
responseByTrial = [1, 1, 2, 2, 2, 1, 1, 2, ...]
```

What we really want for plotting, fitting and thinking about the data, however, looks more like this, where the first column is the orientations used in the experiment and the second column contains the proportion of **cw** responses:

```matlab
data =[
  -10.0000         0
   -5.0000         0
   -3.0000         0
   -1.0000         0
   -0.5000    0.1250
         0    0.2000
    0.5000    0.6667
    1.0000    0.6667
    3.0000    1.0000
    5.0000    1.0000
   10.0000    1.0000]
```

... to make things a bit quicker today, I provide a function called ``sortData()`` that shows how you could achieve this. There are other ways, too, but this isn't bad. The function makes use of **logical indexing** which we haven't covered in much detail, yet. We'll get to this in the next sections. In the meantime, have a look at the code and see which parts you can make sense of. Ask questions / and/or you can also look on google, stackoverflow.com and in other places to get inspiration...

```matlab
help sortData
```


### Plotting / Fitting with a model curve

We'd really like to get to a plot as follows and we'll try to get through this in this session:

<img src="https://github.com/schluppeck/c84nim/blob/master/behaviour-04/psychometric-curve.png" height="500">

The plotting part is actually very easy, but fitting the smooth curve through the points is quite tricky. To get to that point, we need to look at a couple of small extras. First though, you can grab a version of the summary data I have provided to get stuck in:

1. The file ``summaryData.mat`` contains data to work with. At the command prompt, making sure the file is present (you may have to download the latest version via ``git pull``) do the following:

   ```matlab
   load('summaryData.mat') % will load "data"
   data  % find out what's in it.
   ```

2. Plot ``data``, using the numbers in the first column as the x-values, the second column as the y-values. The points should follow a sigmoid shape - this is typical for these psychometric curves: in this case a smooth transition from no **cw** responses for -10 deg, to all **cw** responses for +10 deg.

3. A "nice" mathematical function / curve, that has such a shape and can be controlled with two convenient parameters is the cumulative version of the *normal distribution* (or *Gaussian* curve). You don't need to worry about the details too much, but if this rings a vague bell from previous statistics classes, that's great. If not, don't loose sleep over it. To get a bit of intuition for this, try running the following in a script

   ```matlab
   x = -10:0.2:10; % many x values -10....+10
   p = normpdf(x, 0, 3);
   % plot the PDF (density function)
   figure, plot(x, p , 'r'); title('PDF');
   % the CUMULATIVE function
   c = normcdf(x, 0, 3);
   figure, plot(x, c , 'r'); title('CDF');
   ```

4. The 0 and 3 in the above example correspond to the mean (µ) and standard deviation (σ) of a normal distribution. Try plotting the CDF curve for σ = 1 and σ = 5 on the same plot. Then try changing µ, say µ = -2.5 and µ = +3.4. What happens to the curves?

5. The *fitting* problem is: we'd like to know the "best" combination of µ and σ, such that the smooth curve they describe gets as close as possible to the data points. "Close" here means: in such a way that the squared error between the data and the corresponding points on the smooth curve is minimal... the **least squares** solution.

6. We want to use ``lsqcurvefit`` to do the fitting for use (look at the help), but first we need to do a couple of things:

  - we need re-wrap the ``normcdf`` function, so that it accepts the input arguments in a different order. Currently it's: ``y = normcdf( x, mu, sigma )``, where ``x`` are the values for which you want to find the y-values... but really we want it to be ``y = myNormcdf(p, x)``, where ``p = [mu, sigma]`` i.e. the two parameters stuck together in a list / vector. **Can you think of a way to do this??**

  - we need to calculate the *squared error* between the data (the data-y-values at each point in x) and the model/fit with a particular combination of mu/sigma (also at the corresponding x-values). **How can we do this??**


## Some more details and a worked solution

Please take a bit of time to read more details and look at [a worked solution to this](solution-README.md) as the next session will be the start of a different project.

## Helpful commands

Try looking up help for the following things

```matlab
help plot
help lsqcurvefit
help punct
help normcdf
```
