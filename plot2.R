setwd("/Users/PeterYoder/Documents/Coursera/ExpData_HW1")
data<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
time<-strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
active<-as.numeric(subdata$Global_active_power)
png("plot2.png", width=480, heigh=480)
plot(time, active, type="l", xlab ="", ylab="Global Active Power (kilowatts)")
dev.off()

