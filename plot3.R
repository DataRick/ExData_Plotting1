tabla1<-read.csv("household_power_consumption.txt",skip=66636, nrow=2880, sep=";")
tabla1[,1]<-as.character(tabla1[,1])
tabla1[,2]<-as.character(tabla1[,2])
fecha1<-strptime(paste(tabla1[,1],tabla1[,2],sep=","),format="%d/%m/%Y,%H:%M:%S")
png("plot2.png", width=480, height=480, units="px")
plot(fecha1,tabla1[,7],pch = 26,col="black",xlab="", ylab="Energy sub metering",  main="", ylim=c(0, 37))
plot(fecha1,tabla1[,8],pch = 26,col="red",xlab="", ylab="Energy sub metering",  main="", ylim=c(0, 37))
plot(fecha1,tabla1[,9],pch = 26,col="blue",xlab="", ylab="Energy sub metering",  main="",ylim=c(0, 37))
lines(fecha1,tabla1[,7],col="black")
lines(fecha1,tabla1[,8],col="red")
lines(fecha1,tabla1[,9],col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=(c("black","blue","red")),lty=c(1,1,1))
dev.off()