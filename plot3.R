File <- "household_power_consumption.txt"
data1 <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
metering1<-as.numeric(data$Sub_metering_1)
metering2<-as.numeric(data$Sub_metering_2)
metering3<-as.numeric(data$Sub_metering_3)
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png(file="/home/praveen/Dropbox/Github/ExData_Plotting1/plot3.png",bg="white",width=480, height=480)
plot(datetime,metering1,type="l",ylab="Energy Sub Metering",xlab="",col="black")
lines(datetime,metering2,col="red")
lines(datetime,metering3,col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

