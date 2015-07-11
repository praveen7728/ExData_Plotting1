File <- "household_power_consumption.txt"
data1 <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]


Power<-as.numeric(data$Global_active_power)
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
metering1<-as.numeric(data$Sub_metering_1)
metering2<-as.numeric(data$Sub_metering_2)
metering3<-as.numeric(data$Sub_metering_3)



png(file="/home/praveen/Dropbox/Github/ExData_Plotting1/plot4.png",bg="white",width=480, height=480)
par(mfrow=c(2,2))
plot(datetime,Power,type="l",ylab="Global Active Power",xlab="")

plot(datetime,data$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(datetime,metering1,type="l",ylab="Energy Sub Metering",xlab="",col="black")
lines(datetime,metering2,col="red")
lines(datetime,metering3,col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(datetime,data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off()
