File <- "household_power_consumption.txt"
data1 <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
Power<-as.numeric(data$Global_active_power)
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png(file="/home/praveen/Dropbox/Github/ExData_Plotting1/plot2.png",bg="white",width=480, height=480)
plot(datetime,Power,type="l",ylab="Global Active Power (killowatts)",xlab="")
dev.off()
