data <- read.csv("household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")
data <- data[data$Date %in% c("2/1/2007", "2/2/2007"),]
plot(data$Global_active_power, type="l", xaxt="n", ylab="Global Active Power (kilowatts)", xlab="")
axis(1, at=c(1, 1440, 2880), labels=c("Thurs", "Fri", "Sat"))
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
