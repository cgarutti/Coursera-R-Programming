#Week 3 Quiz 
#===========

#Question 1
#what is the mean of 'Sepal.Length' for the species virginica?
library(datasets)
data(iris)
?iris
iris.sub <- subset(iris, Species=="virginica")
mean(iris.sub$Sepal.Length, na.rm=TRUE)

#Question 2
#Continuing with the 'iris' dataset from the previous Question, 
#what R code returns a vector of the means of the variables 
#'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
apply(iris[, 1:4], 2, mean)

#Question 3
#How can one calculate the average miles per gallon (mpg) 
#by number of cylinders in the car (cyl)?
library(datasets)
data(mtcars)
?mtcars
sapply(split(mtcars$mpg, mtcars$cyl), mean)

#Question 4
#Continuing with the 'mtcars' dataset from the previous Question, 
#what is the absolute difference between 
#the average horsepower of 4-cylinder cars and 
#the average horsepower of 8-cylinder cars?
sapply(split(mtcars$hp, mtcars$cyl), mean)
209.21429 - 82.63636

#Question 5
debug(ls)
ls(x)
