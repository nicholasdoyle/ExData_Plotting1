data <- read.csv("household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", include.lowest=TRUE, xlim=c(0,6), ylim=c(0,1200))
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()