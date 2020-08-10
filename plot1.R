#Plot1.R
electric_power=read.table(file="household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors=FALSE, comment.char="%", na.strings="?")
electric_power
power <- subset(electric_power, Date=="1/2/2007" | Date=="2/2/2007")
summary(power)
datetime <- strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
active_power=power$Global_active_power
png(file = "plot1.png", width = 480, height = 480)
hist(active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()