#Plot2.R
png(file = "plot2.png", width = 480, height = 480)
Sys.setlocale("LC_TIME", "English") #Para cambiarlo de español a inglés
plot(datetime,power$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()