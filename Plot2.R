library(datasets)
Sys.setlocale("LC_TIME", "C")
myData <- read.table("./household_power_consumption.txt", sep=";", header=FALSE, dec=".", skip=66637,nrows=2880 )
dates=as.Date(myData$V1,"%m/%d/%Y")
times=myData$V2
pasted<-paste (dates,times)
datetime<-strptime(pasted, "%Y-%d-%m %H:%M:%S")
png(filename="plot2.png",width=504,height=504)
plot(datetime,myData$V3,xlab="",ylab="Global Active Power (kilowatts)",lty="solid",type="l")
dev.off()

