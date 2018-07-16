source('Loader.R')
data <- loadData('household_power_consumption.txt')

## PLOT I
png(filename='plot1.png', width=480, height=480, units='px')

data$Global_active_power <- gsub("?", "", data$Global_active_power)   # remove ?
data$Global_active_power <- as.numeric(data$Global_active_power)

hist(data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()