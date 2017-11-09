# Anupama Nimak EDA Week1 plot4 Nov 9, 2017


# Missing values are ?
# separator is ;
# Dont read string as factors 
mydata <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

#Subset data for 2 days, could be done better at the time of reading a csv
mysubset <- subset(mydata, mydata$Date %in% c("1/2/2007", "2/2/2007"))

#Convert the date and time in correct format
newdatetime <- paste(mysubset$Date, mysubset$Time, sep=" ")
dtcol <- strptime(newdatetime, "%d/%m/%Y %H:%M:%S")

#png file
png(file = "plot4.png", width = 480, height = 480)

# Set up plotting environment
par(mfrow=c(2,2))

## Plot[1,1]
plot(dtcol, mysubset$Global_active_power, type="l", xlab = "", ylab = "Global Active Power")

##Plot[1,2]
plot(dtcol, mysubset$Voltage, type="l", xlab="datetime",ylab="Voltage")


## plot[2,1]
plot(dtcol, mysubset$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub meeting", ylim=c(0,40))
par(new=T)
plot(dtcol, mysubset$Sub_metering_2, type = "l", col = "red", ylab = "Energy sub meeting", ylim=c(0,40))
par(new=T)
plot(dtcol, mysubset$Sub_metering_3, type = "l", col = "blue", ylab = "Energy sub meeting", ylim=c(0,40))

##Plot[2,2]
plot(dtcol, mysubset$Global_reactive_power, type="l", xlab="datetime",ylab="Global_Reactive_power")

dev.off()

# Assignment plot4
                   