datafile <- "household_power_consumption.txt"
alldata <- read.table(datafile, sep =";",header=TRUE)
# data <- subset(alldata, Date == "2/1/2007" | Date == "2/2/2007")
data <- subset(alldata, Date == "1/2/2007" | Date == "2/2/2007")
png("Plot2.png")
temp <- paste(as.character(data$Date),as.character(data$Time))
temp2 <- strptime(temp, format = "%d/%m/%Y %H:%M:%S")
plot(temp2, as.numeric(as.character(data$Global_active_power)), ylab = "Global Active Power (kw)", xlab="Time",type = "l")
dev.off()
