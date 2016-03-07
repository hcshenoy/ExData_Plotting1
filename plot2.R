dat <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
data <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
time <-strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data <- cbind(time, data)

plot(data$time, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
