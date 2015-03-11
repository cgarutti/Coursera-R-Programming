#Week 4 Quiz 
#===========

#Question 1
#What is produced at the end of this snippet of R code? 
set.seed(1)
rpois(5, 2)

#Question 2
#What R function can be used to generate standard Normal random variables?
rnorm(10)

#Question 5
#What does the following code do?
set.seed(10)
x <- rbinom(10000, 10, 0.5)
e <- rnorm(10000, 0, 20)
y <- 0.5 + 2 * x + e
hist(y)
