datafile <- "household_power_consumption.txt"
alldata <- read.table(datafile, sep =";",header=TRUE)
# data <- subset(alldata, Date == "2/1/2007" | Date == "2/2/2007")
data <- subset(alldata, Date == "1/2/2007" | Date == "2/2/2007")
temp <- paste(as.character(data$Date),as.character(data$Time))
temp2 <- strptime(temp, format = "%d/%m/%Y %H:%M:%S")

png("Plot4.png")
par(mfcol = c(2,2))

# upper left
plot(temp2, as.numeric(as.character(data$Global_active_power)), ylab = "Global Active Power (kw)", xlab="Time",type = "l")
# lower left
plot(temp2, as.numeric(as.character(data$Sub_metering_1)), ylab = "Energy Sub Metering", xlab="Time",type = "l")
points(temp2, as.numeric(as.character(data$Sub_metering_2)), col= "red", type = "l")
points(temp2, as.numeric(as.character(data$Sub_metering_3)), col= "blue", type = "l")
legend("topright", pch = -1, col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1,bty="n")
# upper right
plot(temp2, as.numeric(as.character(data$Voltage)), ylab = "Voltage", xlab="Time",type = "l")
# upper right
plot(temp2, as.numeric(as.character(data$Global_reactive_power)), ylab = "Global reactive power", xlab="Time",type = "l")

dev.off()