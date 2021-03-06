## Creating Plot 1

source("./GitHub/ExData_Plotting1/Reading_Data.R")

hist(data_subset$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving as png
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()