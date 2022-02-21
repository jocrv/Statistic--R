Use dplyr to create a vector x with the body weight of all males on the control (chow) diet.
What is this population's average? 30.96381


x <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
mean(x)


Population, Samples, and Estimates Exercises #2


Now use the rafalib package and use the popsd() function to compute the population standard deviation. 4.420501



library(rafalib)
popsd(x)

#3

Set the seed at 1. Take a random sample  of size 25 from x.
What is the sample average?

set.seed(1)
X <- sample(x,25)
mean(X)

#4

Use dplyr to create a vector y with the body weight of all males on the high fat hf) diet.
What is this population's average? 34.84793

y <- filter(dat, Sex=="M" & Diet=="hf") %>% select(Bodyweight) %>% unlist
mean(y)

#5

Now use the rafalib package and use the popsd() function to compute the population standard deviation. 5.574609

library(rafalib)
popsd(y)

#6

Set the seed at 1. Take a random sample  of size 25 from y.
What is the sample average?

set.seed(1)
Y <- sample(y,25)
mean(Y)

#7

What is the difference in absolute value between  and ?

abs( ( mean(y) - mean(x) ) - ( mean(Y) - mean(X) ) )

#8

Repeat the above for females, this time setting the seed to 2.
What is the difference in absolute value between  and ?
Make sure to set the seed to 2 before each sample() call. This function should be called twice.

x <- filter(dat, Sex=="F" & Diet=="chow") %>% select(Bodyweight) %>% unlist
set.seed(1)
X <- sample(x,25)
y <- filter(dat, Sex=="F" & Diet=="hf") %>% select(Bodyweight) %>% unlist
set.seed(1)
Y <- sample(y,25)
abs( ( mean(y) - mean(x) ) - ( mean(Y) - mean(X) ) )


