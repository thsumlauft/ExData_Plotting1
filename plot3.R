## Creating Plot 3

source("./GitHub/ExData_Plotting1/Reading_Data.R")

## Converting dates and time into POSIXct
datetime <- paste(as.Date(data_subset$Date), data_subset$Time)
data_subset$Datetime <- as.POSIXct(datetime)

## Plotting data
plot(data_subset$Datetime, data_subset$Sub_metering_1, type="l", col="black", ylab="Energy Submetering", xlab="")
lines(data_subset$Datetime, data_subset$Sub_metering_2, type="l", col="red")
lines(data_subset$Datetime, data_subset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

## Saving graph as png
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()