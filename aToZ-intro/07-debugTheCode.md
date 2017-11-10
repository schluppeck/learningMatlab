# Debugging other people's code

## What's wrong with the following code

Each of the following examples has **one or more** issues. Identify them and try to fix them. What was the intent? Why was it broken? Can you think of a better way to do it?

1. Syntax issues

```matlab
x = zeros(10,1);
x[9] = 1; % set the 9th element to 1
```

```matlab
y = (ones(10,1), zeros(10,1)); % a long column
```

```matlab
z = Mean( rand(100,1)  );  % taking the mean
```

2. Bad intent

```matlab
v = rand(10,1); % vector of 10 random #s
for i in 1:10
  if i == 3
    % when the index is 3 skip step by
    % setting i to 4
    i = 4;
  end
end
```

```matlab
% calculate the mean
nums = randn(100,1);
mean = sum(nums)./numel(nums); % BAD! why??
```

```matlab
% calculate the variance
nums = randn(100,1);
var = (nums-mean(nums)).^2; % BAD for 2 reasons! why??
```

3. Bad style

```matlab
% calculate the variance
nums = randn(100,1);
foo = mean(nums);
Foo = median(nums);
foO = mode(nums);
fOo = var(nums);
fO0 = std(nums)./mean(nums);
```

```matlab
x = -2:0.2:2;
y = x.^2-1+1/3-x-2.*0.2;
```

# Next

[Looping over plots](08-loopOverPlots.md) - layer several plots together.
