# Author: Danh Doan
# Plot 3

power <- read.csv('household_power_consumption.txt', sep=';', na.strings='?')
power$Time <- strptime(paste(power$Date, power$Time), '%d/%m/%Y %H:%M:%S')
power$Date <- as.Date(power$Date, '%d/%m/%Y')
twodays <- subset(power, Date == '2007-02-01' | Date == '2007-02-02')
# Plot
png(file='plot3.png', width=480, height=480)
with(twodays,plot(Time, Sub_metering_1, type='l', xlab='', ylab='Energy sub metering'))
with(twodays,lines(Time, Sub_metering_2, col='red'))
with(twodays,lines(Time, Sub_metering_3, col='blue'))
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black','red','blue'),lty=c(1,1,1))
dev.off()