tabla1<-read.csv("household_power_consumption.txt",skip=66636, nrow=2880, sep=";")
tabla1[,1]<-as.character(tabla1[,1])
tabla1[,2]<-as.character(tabla1[,2])
fecha1<-strptime(paste(tabla1[,1],tabla1[,2],sep=","),format="%d/%m/%Y,%H:%M:%S")
png("plot4.png", width=480, height=480, units="px")
par(mfrow=c(2,2))
plot(fecha1,tabla1[,3],pch = 26,col="red",xlab="", ylab="Global Active Power",  main="")
lines(fecha1,tabla1[,3])

plot(fecha1,tabla1[,5],pch = 26,col="black",xlab="datetime", ylab="Voltage",  main="")
lines(fecha1,tabla1[,5])

plot(fecha1,tabla1[,7],pch = 26,col="black",xlab="", ylab="Energy sub metering",  main="", ylim=c(0, 37))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=(c("black","blue","red")),lty=c(1,1,1),bty = "n",y.intersp=1)
lines(fecha1,tabla1[,7],col="black")
lines(fecha1,tabla1[,8],col="red")
lines(fecha1,tabla1[,9],col="blue")

plot(fecha1,tabla1[,4],pch = 26,col="black",xlab="datetime", ylab="Global_reactive_power",  main="")
lines(fecha1,tabla1[,4])

dev.off()