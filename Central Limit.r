#8

Here we are going to use the function replicate() to learn about the distribution of random variables. All the above exercises relate to the normal distribution as an approximation of the distribution of a fixed list of numbers or a population. We have not yet discussed probability in these exercises. If the distribution of a list of numbers is approximately normal, then if we pick a number at random from this distribution, it will follow a normal distribution. However, it is important to remember that stating that some quantity has a distribution does not necessarily imply this quantity is random. Also, keep in mind that this is not related to the central limit theorem. The central limit applies to averages of random variables. Let's explore this concept.
We will now take a sample of size 25 from the population of males on the chow diet. The average of this sample is our random variable. We will use the replicate() function to observe 10,000 realizations of this random variable. Set the seed at 1, then generate these 10,000 averages. Make a histogram and qq-plot of these 10,000 numbers against the normal distribution.
We can see that, as predicted by the CLT, the distribution of the random variable is very well approximated by the normal distribution

y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
set.seed(1)
avgs <- replicate(10000, mean( sample(y, 25)))
mypar(1,2)
hist(avgs)
qqnorm(avgs)
qqline(avgs)
    
What is the average of the distribution of the sample average?
30.96856

> y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
> set.seed(1)
> avgs <- replicate(10000, mean( sample(y, 25)))
> mypar(1,2)
> hist(avgs)
> qqnorm(avgs)
> qqline(avgs)
> mean(avgs)
