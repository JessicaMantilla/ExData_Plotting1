#Plot3.R
png(file = "plot3.png",width = 480, height = 480)
Sys.setlocale("LC_TIME", "English")
plot(datetime,power$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
points(datetime,power$Sub_metering_2,type="l",col="red")
points(datetime,power$Sub_metering_3,type="l",col="blue")
legend("topright", cex = 1,lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()