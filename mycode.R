myfunction <- function(){
  x <- rnorm(100)  
  mean(x)
}

second <- function(x){
  x + rnorm(length(x))
}

# returns only those elements of the vector 
# with value larger than 10
above10 <- function(x){
  use <- x > 10
  x[use]
}

# returns only those elements of the vector 
# with value larger than n
above <- function(x, n){
  use <- x > n
  x[use]
}

#count the number of missing values (=NA)
#in a column of a data frame
#NOTE: Specify "col" (e.g. "Gender")
miss_col <- function(x, col){
  sum(is.na(subset(x,select=(col))))
}

#return a vector that contains
#the mean for each column
meanscol = function(x, removeNA = TRUE){
  m = ncol(x)
  means = numeric(m)
  for (i in 1:m){
    means[i]=mean(x[,i], na.rm = removeNA)
  }
  means
}
