datafile2 <- "./household_power_consumption.txt"
data2 <- read.table(datafile2, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset2 <- data2[data2$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subset2$Date, subset2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset2$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()