df<-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors=FALSE)
df$Date<-as.Date(df[1:2075259,"Date"], "%d/%m/%Y")
df<-df[df[1:2075259,"Date"]=="2007-02-01" | df[1:2075259,"Date"]=="2007-02-02",1:9]

png(filename="plot1.png")
par(bg="transparent")
hist(as.numeric(df[,3]),col="#FF2500", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()