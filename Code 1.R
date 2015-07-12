#Plot 1 - Assignment
datafile1 <- "./household_power_consumption.txt"
data1 <- read.table(datafile1, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset1 <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalactivepower <- as.numeric(subset1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalactivepower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

