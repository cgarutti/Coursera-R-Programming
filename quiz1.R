#Week 1 Quiz 
#===========

#Question 4
#If I execute the expression x <- 4 in R, what is the class of the object `x' 
#as determined by the `class()' function?
x = 4
class(x)

#Question 5
#What is the class of the object defined by the expression x <- c(4, "a", TRUE)?
x <- c(4, "a", TRUE)
class(x)

#Question 6
#If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), 
#what is produced by the expression rbind(x, y)?
x <- c(1,3, 5)
y <- c(3, 2, 10)
rbind(x, y)

#Question 8
#Suppose I have a list defined as x <- list(2, "a", "b", TRUE). 
#What does x[[2]] give me?
x <- list(2, "a", "b", TRUE)
x[[2]]
class(x[[2]])

#Question 9
#Suppose I have a vector x <- 1:4 and y <- 2:3. 
#What is produced by the expression x + y?
x <- 1:4
y <- 2
x + y

#Question 10
#Suppose I have a vector x <- c(3, 5, 1, 10, 12, 6) 
#and I want to set all elements of this vector that are less than 6 
#to be equal to zero. What R code achieves this?
x <- c(3, 5, 1, 10, 12, 6)
x[x %in% 1:5] <- 0
x

#Question 11
#In the dataset provided for this Quiz, what are the column names of the dataset?
x=read.csv("C:/Users/cgarutti/Dropbox/Coursera/R Programming/Data/hw1_data.csv")
names(x)

#Question 12
#Extract the first 2 rows of the data frame and print them to the console. 
#What does the output look like?
head(x,2)

#Question 13
#How many observations (i.e. rows) are in this data frame?
nrow(x)

#Question 14
#Extract the last 2 rows of the data frame and print them to the console. 
#What does the output look like?
tail(x,2)

#Question 15
#What is the value of Ozone in the 47th row?
x$Ozone[47]

#Question 16
#How many missing values are in the Ozone column of this data frame?
sum(!complete.cases(x$Ozone)) #or summary(x)

#Question 17
#What is the mean of the Ozone column in this dataset? 
#Exclude missing values (coded as NA) from this calculation.
mean(x$Ozone,na.rm=T)

#Question 18
#Extract the subset of rows of the data frame where 
#      Ozone values are above 31 and 
#      Temp values are above 90. 
#What is the mean of Solar.R in this subset?
x.sub1 <- subset(x, Ozone>31 & Temp >90)
mean(x.sub1$Solar.R, na.rm=TRUE)

#Question 19
#What is the mean of "Temp" when "Month" is equal to 6? 
x.sub2 <- subset(x, Month == 6)
mean(subset(x, Month == 6)$Temp, na.rm=TRUE)

#Question 20
#What was the maximum ozone value in the month of May (i.e. Month = 5)?
max(subset(x, Month == 5)$Ozone, na.rm=TRUE)


