datafile <- "household_power_consumption.txt"
alldata <- read.table(datafile, sep =";",header=TRUE)
data <- subset(alldata, Date == "1/2/2007" | Date == "2/2/2007")
png("Plot1.png")
with(data, hist(as.numeric(as.character(Global_active_power)), xlab = "Global Active Power (kw)", 
                ylab="Frequency", main = "Histogram of Global Active Power"))
dev.off()


