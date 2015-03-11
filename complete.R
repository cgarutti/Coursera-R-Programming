#Function that reads a directory full of files 
#and reports the number of completely observed cases in each data file. 
#The function should return a data frame where 
#   the first column is the name of the file and 
#   the second column is the number of complete cases.
complete <- function(directory, range = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  #set 'directory' as my working directory
  setwd(directory) 
  
  #read CSV files
  temp = list.files(pattern="*.csv")
  myfiles = lapply(temp, read.csv)
  
  #is complete case?
  logical = lapply(myfiles,complete.cases)
  
  #num complete cases
  numcc = lapply(logical,sum)
  
  #convert list to data frame
  x=do.call(rbind.data.frame, numcc)
  
  #rename num complete cases to 'nobs'
  names(x) = "nobs"
  
  #add column 'id' to the data frame
  x$id = 1:nrow(x)
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  x_sub = subset(x,id %in% range)
  
  x_sub[c("id", "nobs")]
}
