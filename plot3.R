dat <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
data <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
time <-strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data <- cbind(time, data)

columns <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(data$time, data$Sub_metering_1, type="l", col=columns[1], xlab="", ylab="Energy sub metering")
lines(data$time, data$Sub_metering_2, col=columns[2])
lines(data$time, data$Sub_metering_3, col=columns[3])
legend("topright", legend=labels, col=columns, lty="solid")