all_data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE, dec=".")
data<-subset(all_data, all_data$Date == "1/2/2007" |  all_data$Date == "2/2/2007")

data$Global_active_power<-as.numeric(data$Global_active_power)


png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
