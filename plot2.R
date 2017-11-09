# Anupama Nimak EDA Week1 plot2 Nov 9, 2017


# Missing values are ?
# separator is ;
# Dont read string as factors 
mydata <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

#Subset data for 2 days, could be done better at the time of reading a csv
mysubset <- subset(mydata, mydata$Date %in% c("1/2/2007", "2/2/2007"))
#Convert the date and time in correct format
newdatetime <- paste(mysubset$Date, mysubset$Time, sep=" ")
dtcol <- strptime(newdatetime, "%d/%m/%Y %H:%M:%S")
png(file = "plot2.png", width = 480, height = 480)
plot(dtcol, mysubset$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

# Assignment plot2
                   