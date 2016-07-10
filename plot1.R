setwd("/Users/PeterYoder/Documents/Coursera/ExpData_HW1")
data<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
active<-as.numeric(subdata$Global_active_power)
png("plot1.png", width=480, heigh=480)
hist(active, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()



