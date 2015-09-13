setwd("C:/Users/Akhil/Documents/R prog")

data <- read.table("C:/Users/Akhil/Documents/R prog/household_power_consumption.txt",header = T, sep = ";",as.is=T,na.strings = "?")
# convert and assing the formating for data field
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
