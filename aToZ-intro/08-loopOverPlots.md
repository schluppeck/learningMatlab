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



# Next

[Nesting loops](09-nestedLoops.md) - how to loop over loops.
