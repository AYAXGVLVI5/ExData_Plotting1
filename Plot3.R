library(datasets)
Sys.setlocale("LC_TIME", "C")
myData <- read.table("./household_power_consumption.txt", sep=";", header=FALSE, dec=".", skip=66637,nrows=2880 )
dates=as.Date(myData$V1,"%m/%d/%Y")
times=myData$V2
pasted<-paste (dates,times)
datetime<-strptime(pasted, "%Y-%d-%m %H:%M:%S")
png(filename="plot3.png",width=504,height=504)
plot(datetime,myData$V7,xlab="",ylab="Energy sub metering",lty="solid",type="l")
lines(datetime,myData$V8,type="l",col="red")
lines(datetime,myData$V9,type="l",col="blue")
legend("topright",cex=0.95, lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

