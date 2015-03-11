#Function that calculates the correlation of two pollutants (sulfate or nitrate) 
#across a specified list of monitors. 
#The function 'pollutantcorr' takes two arguments: 
#   'directory' and 
#   'id'
#Given a vector monitor ID numbers, 'pollutantcorr' reads that monitors' 
#particulate matter data from the directory specified in the 'directory' 
#argument and returns the correlation of the pollutants across all of the monitors, 
#ignoring any missing values coded as NA.
pollutantcorr <- function(directory, id = 1:332) {
  
  #set 'directory' as my working directory
  setwd(directory) 
  
  #read CSV files
  temp = list.files(pattern="*.csv")
  myfiles = lapply(temp, read.csv)
  
  #convert list to data frame
  x=do.call(rbind.data.frame, myfiles)
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  x_sub=subset(x,ID %in% id)
  
  #set digit precision
  options(digits=4)
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  cor(x_sub[c("sulfate","nitrate")],use="complete.obs")
}
