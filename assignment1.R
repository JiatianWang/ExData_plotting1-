
install.packages("readr")
library("readr")

setwd("C:\\Users\\teren\\OneDrive\\Desktop\\Coursera\\week1\\exdata_data_household_power_consumption")

data <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",
                   colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
# format date 
data$Date <- as.Date(data$Date, "%d/%m/%Y")

# subset date from 2007-02-01 to 2007-02-02
data_new <- subset(data,Date >= "2007-02-01" & Date <= "2007-02-02" )

# combine 
data_new$Date_time <- paste(data_new$Date,data_new$Time)

# Format dateTime 
data_new$Date_time <- as.POSIXct(data_new$Date_time)

str(data_new)

# Plot1 
hist(data_new$Global_active_power,col = "red",
     xlab = "Global Active Power (Kilowatts)",
     ylab = "Frequency",
     main = "Global Active Power")

# save   
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()

# plot2 
plot(Global_active_power ~ Date_time, data_new, type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = NA)
# save 
dev.copy(png,"plot2.png", width = 480, height = 480 )


# plot 3 
with(data_new, {
  plot(Date_time, Sub_metering_1,type = "l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Date_time, Sub_metering_2, col = 'red')
  lines(Date_time, Sub_metering_3, col = 'blue')
})

legend("topright",lty=1, lwd=2,col=c("black","blue","red"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,"plot3.png", width = 480, height = 480 )

# plot 4 
par(mfrow = c(2, 2))
with(data_new, {
  plot(Date_time, Global_active_power,type = "l",ylab = "Global Active Power",xlab = "")
  plot(Date_time, Voltage,type = "l", xlab = "datetime",ylab = "Voltage")
  plot(Date_time, Sub_metering_1,type = "l",ylab = "Engergy sub metering",xlab ="")
  lines(Date_time, Sub_metering_2, col = 'red')
  lines(Date_time, Sub_metering_3, col = 'blue')
  legend("topright", lty = 1, col = c("black","blue","red"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(Date_time, Global_reactive_power,type="l",xlab = "datetime",ylab = "Global Reactive Power (Kilowatts)")
})

dev.copy(png,"plot4.png", width = 480, height = 480 )





