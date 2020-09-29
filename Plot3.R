data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
datetime <- strptime(paste(data$Date,as.character(data$Time)),"%Y-%m-%d %H:%M:%S")

# plot 3
plot(datetime, as.numeric(as.character(data$Sub_metering_1)), 
     type = "l", xlab = "", ylab = "Energy sub metering")
lines(datetime, as.numeric(as.character(data$Sub_metering_2)),
      type = "l", col = "red")
lines(datetime, data$Sub_metering_3,
      type = "l", col = "blue")
legend("topright", "(x,y)", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1, cex = 0.6)
