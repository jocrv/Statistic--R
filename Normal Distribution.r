Use a histogram to "look" at the distribution of averages we get with a sample size of 5 and a sample size of 50. How would you say they differ?
They are actually the same.
X ---------- They both look roughly normal, but with a sample size of 50 the spread is smaller.
They both look roughly normal, but with a sample size of 50 the spread is larger.
The second distribution does not look normal at all.

#2
For the last set of averages, the ones obtained from a sample size of 50, what proportion are between 23 and 25?

0.976

#3
Note that you can use the function pnorm() to find the proportion of observations below a cutoff x given a normal distribution with mean mu and standard deviation sigma with pnorm(x, mu, sigma) or pnorm( (x-mu)/sigma ).
What is the proportion of observations between 23 and 25 in a normal distribution with average 23.9 and standard deviation 0.43?
Hint: Use pnorm() twice.

0.9765648
