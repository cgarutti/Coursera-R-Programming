#Function that takes 
#   a directory of data files and 
#   a threshold for complete cases 
#and calculates the correlation between sulfate and nitrate for monitor locations 
#where the number of completely observed cases (on all variables) is greater than the threshold. 
#
#The function should return 
#   a vector of correlations for the monitors that meet the threshold requirement. 
#If no monitors meet the threshold requirement, 
#   then the function should return a numeric vector of length 0
#
corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  #set 'directory' as my working directory
  setwd(directory) 
  
  #read CSV files
  temp = list.files(pattern="*.csv")
  myfiles = lapply(temp, read.csv)
  
  #convert list to data frame
  x=do.call(rbind.data.frame, myfiles)
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  source("complete.R")
  x_cc = complete(directory)
  x_cc$thr = x_cc[["nobs"]]>threshold
  
  ## Return a numeric vector of correlations
}
