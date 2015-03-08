df<-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE)
df$Date<-as.Date(df[1:2075259,"Date"], "%d/%m/%Y")
df<-df[df[1:2075259,"Date"]=="2007-02-01" | df[1:2075259,"Date"]=="2007-02-02",1:9]

times<-as.POSIXct(paste(df[,1],df[,2]))

png(filename="plot2.png")
par(bg="transparent")
plot(times,df[,3],type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()