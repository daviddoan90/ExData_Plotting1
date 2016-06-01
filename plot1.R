# Author: Danh Doan
# Plot 1

power <- read.csv('household_power_consumption.txt', sep=';', na.strings='?')
power$Date <- as.Date(power$Date, '%d/%m/%Y')
twodays <- subset(power, Date == '2007-02-01' | Date == '2007-02-02')

# Plot
png(filename='plot1.png', width=480, height=480)
hist(twodays$Global_active_power, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')
dev.off()