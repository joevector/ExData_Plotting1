df<-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE)
df$Date<-as.Date(df[1:2075259,"Date"], "%d/%m/%Y")
df<-df[df[1:2075259,"Date"]=="2007-02-01" | df[1:2075259,"Date"]=="2007-02-02",1:9]

times<-as.POSIXct(paste(df[,1],df[,2]))

png(filename="plot4.png")
par(mfrow=c(2,2), bg="transparent")
plot(times,df[,3],type="l",xlab="",ylab="Global Active Power")
plot(times,df[,5],type="l",xlab="datetime",ylab="Voltage")
plot(times,df[,7],type="l",xlab="",ylab="Energy sub metering")
lines(times,df[,8],col="red")
lines(times,df[,9],col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red","blue"), bty="n")
plot(times,df[,4],type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()