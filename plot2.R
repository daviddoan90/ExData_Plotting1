# Author: Danh Doan
# Plot 2

power <- read.csv('household_power_consumption.txt', sep=';', na.strings='?')
power$Time <- strptime(paste(power$Date, power$Time), '%d/%m/%Y %H:%M:%S')
power$Date <- as.Date(power$Date, '%d/%m/%Y')
twodays <- subset(power, Date == '2007-02-01' | Date == '2007-02-02')
# Plot
png(file='plot2.png', width=480, height=480)
with(twodays,plot(Time, Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)'))
dev.off()