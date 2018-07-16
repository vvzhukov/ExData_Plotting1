## PLOT I

source('Loader.R')
data <- loadData('household_power_consumption.txt')

createPng('plot1.png')

data$Global_active_power <- gsub("?", "", data$Global_active_power)   # remove ?
data$Global_active_power <- as.numeric(data$Global_active_power)

hist(data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()