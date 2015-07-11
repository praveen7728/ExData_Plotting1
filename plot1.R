File <- "household_power_consumption.txt"
data1 <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]

png(file="/home/praveen/Dropbox/Github/ExData_Plotting1/plot1.png",bg="white",width=480, height=480)
hist(as.numeric(data$Global_active_power),main="Global Active Power", xlab="Global Active Power(Killowatts)",col="red")
dev.off()

