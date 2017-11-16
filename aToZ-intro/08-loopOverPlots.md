# Loop over plots

## Find a way to layer plots

**Useful operators, commands, and concepts for this unit...**

``hold()``, ``figure()``, ``clf``, ``for``, ``colormap``

Given the following data, find a way to plot a family of curves in the same figure window, for each combination of $\mu$, $\sigma$, and with appropriately coloured lines.

```matlab
x = linspace(-3,3,100);
mus = [-1, -0.5, 0, +0,5, 1];
sigmas = [0.5, 0.5, 1, 2, 2];
colors = parula(5);

% for one...
y = normcdf(x, mus(1), sigmas(1));
figure
plot(x,y,'color', colors(1,:)); % first in the "family"
```

<details>
  <summary>Hint 1</summary><p>  
  Step one in solving this problem could be to figure out how to calculate the ``y`` values in a loop (and worry about the plotting later).
  
  ```matlab
  % how many parameters?
  nParams = numel(mus); % if we grow the vector this will still work
  % now loop from 1...nParams
  for iParam = 1:nParams
    y = y = normcdf(x, mus(iParam), sigmas(iParam));
  end
  ```
  
  This code picks the first element of ``mus`` and ``sigmas`` on the first iteration, the second on the second iteration, etc.
  
  But ``y`` gets over-written each time we go through the loop. That's fine for here, but you could think about how to keep hold on to that information instead.<p>
</details>


# Next

[Nesting loops](09-nestedLoops.md) - how to loop over loops.
