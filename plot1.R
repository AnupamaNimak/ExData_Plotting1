# Anupama Nimak EDA Week1 plot1 Nov 9, 2017


# Missing values are ?
# separator is ;
# Dont read string as factors 
mydata <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

#Subset data for 2 days, could be done better at the time of reading a csv
mysubset <- subset(mydata, mydata$Date %in% c("1/2/2007", "2/2/2007"))
png(file = "plot1.png", width = 480, height = 480)
hist(mysubset$Global_active_power, col = "red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

# Assignment plot1
                   