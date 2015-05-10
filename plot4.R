## Creating Plot 4

source("./GitHub/ExData_Plotting1/Reading_Data.R")

## Converting dates and time into POSIXct

datetime <- paste(as.Date(data_subset$Date), data_subset$Time)
data_subset$Datetime <- as.POSIXct(datetime)


## Plotting graphs and composition of graphics matrix

png("plot4.png", width=480, height=480)
## As opposed to in plot 3, copy.dev() does not produce satisfactory result with regard to the legend in this context; using png() seems to solve the distortion problem.
par(mfrow = c(2, 2))
## Creates a 2x2 graphic matrix

plot(data_subset$Datetime, data_subset$Global_active_power, type="l", ylab="Global Active Power", xlab="")
## creates upper left graphic

plot(data_subset$Datetime, data_subset$Voltage, type="l", xlab="datetime", ylab="Voltage")
## creates upper right graphic

plot(data_subset$Datetime, data_subset$Sub_metering_1, type="l", col="black", ylab="Energy Submetering", xlab="")
lines(data_subset$Datetime, data_subset$Sub_metering_2, type="l", col="red")
lines(data_subset$Datetime, data_subset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"),pt.cex=1, cex=0.8)
## creates lower left graphic

plot(data_subset$Datetime, data_subset$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
## creates lower right graphic

dev.off()
