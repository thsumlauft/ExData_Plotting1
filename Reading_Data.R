## Loading the full dataset and subsetting the required two days

library(dplyr)
## loads dplyr

## Loading the full data set

data <- read.table("household_power_consumption.txt",
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
                   na = "?")
## Reads the data from the file
dim(data)                
## Displays a summary of the variables

## Subsetting the required dates 1/2/2007 and 2/2/2007

data$Date <- as.Date(data$Date, format="%d/%m/%Y")
## converts the date column into date format
data_subset <- filter(data,Date >= "2007-02-01",Date <= "2007-02-02")
## creates a subset with the two required days
dim(data_subset)
## displays the number of observations and variables
