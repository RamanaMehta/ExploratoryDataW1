data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
datetime <- strptime(paste(data$Date,as.character(data$Time)),"%Y-%m-%d %H:%M:%S")


# plot 2
plot(datetime, as.numeric(as.character(data$Global_active_power)), 
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
