Download this RData file to your working directory. Then load the data into R with the following command:
load("skew.RData")
You should have a 1000 x 9 dimensional matrix 'dat':
dim(dat)
Using QQ-plots, compare the distribution of each column of the matrix to a normal. That is, use qqnorm() on each column. To accomplish this quickly, you can use the following line of code to set up a grid for 3x3=9 plots. (mfrow means we want a multifigure grid filled in row-by-row.Another choice is mfcol.)
par(mfrow = c(3,3))
Then you can use a for loop, to loop through the columns, and display one qqnorm() plot at a time. You should replace the text between ** with your own code.
for (i in 1:9) {
**put your qqnorm call here**
}
Identify the two columns which are skewed.
Examine each of these two columns using a histogram. Note which column has "positive skew", in other words the histogram shows a long tail to the right (toward larger values). Note which column has "negative skew", that is, a long tail to the left (toward smaller values). Note that positive skew looks like an up-shaping curve in a qqnorm() plot, while negative skew looks like a down-shaping curve.
You can use the following line to reset your graph to just show one at a time:
par(mfrow=c(1,1))


#1

Which column has positive skew (a long tail to the right)?

4

#2

Which column has negative skew (a long tail to the left)?
9

Use boxplots and histograms to compare the finishing times of males and females. Which of the following best describes the difference?
Males and females have the same distribution.
Most males are faster than most women.
Xxxx Male and females have similar right skewed distributions with the former, 20 minutes shifted to the left.
Both distribution are normally distributed with a difference in mean of about 30 minutes.

mypar(1,3)
males <- filter(nym.2002, gender=="Male") %>% select(time) %>% unlist
females <- filter(nym.2002, gender=="Female") %>% select(time) %>% unlist
boxplot(females, males)
hist(females,xlim=c(range( nym.2002$time)))
hist(males,xlim=c(range( nym.2002$time)))

