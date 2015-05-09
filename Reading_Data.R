## Loading the full dataset and subsetting the required two days

## Loading the full data set


data <- read.table("household_power_consumption.txt",
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
                   na = "?")
dim(data)        			   

## Subsetting the required dates 1/2/2007 and 2/2/2007

data$Date <- as.Date(data$Date, format="%d/%m/%Y")
## converts the date column into date format
data_subset <- filter(data,Date >= "2007-02-01",Date <= "2007-02-02")
dim(data_subset)
## creates a subset with the two required days