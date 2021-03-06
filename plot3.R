data <- read.csv("household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
plot(data$Sub_metering_1, type="l", xaxt="n", ylab="Energy sub metering", xlab="")
lines(data$Sub_metering_2, col="red")
lines(data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1)
axis(1, at=c(1, 1440, 2880), labels=c("Thurs", "Fri", "Sat"))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()