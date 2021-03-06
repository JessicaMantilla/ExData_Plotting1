#Plot3.R
png(file = "plot4.png",width = 480, height = 480)
Sys.setlocale("LC_TIME", "English")
par(mfrow=c(3,2),mar=c(4,5,2,2),oma=c(0,0,2,0))
plot(datetime,power$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
plot(datetime,power$Voltage,type="l",ylab="Voltage")
plot(datetime,power$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
points(datetime,power$Sub_metering_2,type="l",col="red")
points(datetime,power$Sub_metering_3,type="l",col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(datetime,power$Global_reactive_power,type="l")
dev.off()