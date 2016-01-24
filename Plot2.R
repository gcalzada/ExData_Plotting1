all_data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE, dec=".")
data<-subset(all_data, all_data$Date == "1/2/2007" |  all_data$Date == "2/2/2007")

data$Global_active_power<-as.numeric(data$Global_active_power)
data$Time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)
plot(data$Time, data$Global_active_power , type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
