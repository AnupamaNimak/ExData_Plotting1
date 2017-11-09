# Anupama Nimak EDA Week1 plot3 Nov 9, 2017


# Missing values are ?
# separator is ;
# Dont read string as factors 
mydata <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

#Subset data for 2 days, could be done better at the time of reading a csv
mysubset <- subset(mydata, mydata$Date %in% c("1/2/2007", "2/2/2007"))

#Convert the date and time in correct format
newdatetime <- paste(mysubset$Date, mysubset$Time, sep=" ")
dtcol <- strptime(newdatetime, "%d/%m/%Y %H:%M:%S")

png(file = "plot3.png", width = 480, height = 480)
plot(dtcol, mysubset$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub meeting", ylim=c(0,40))
par(new=T)
plot(dtcol, mysubset$Sub_metering_2, type = "l", col = "red", ylab = "Energy sub meeting", ylim=c(0,40))
par(new=T)
plot(dtcol, mysubset$Sub_metering_3, type = "l", col = "blue", ylab = "Energy sub meeting", ylim=c(0,40), xlab="")
par(new=T)
leg.txt <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright", leg.txt, lty=c(1,1), lwd = c(2,2,2), col=c("black", "red", "blue"))
dev.off()

# Assignment plot3
                   