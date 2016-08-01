# WEEK 1
getwd()
setwd("~/datasciencecoursera/Exploratory Data Analysis/Data Files")
data<- read.table("household_power_consumption.txt",header=T, sep=";",na.strings ="?")
names(data)
dim(data)
head(data)

# data$date<-as.Date(data$Date, "%d/%m/%Y")
data1<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
dim(data1)
data1$Date

x<- strptime(paste(data1$Date, data1$Time), "%d/%m/%Y %H:%M:%S")

# plot 3:
par(mfrow=c(1,1))
plot(x,data1$Sub_metering_1,type="l",col="black", xlab=" ", ylab="Energy sub metering")
lines(x,data1$Sub_metering_2,type="l",col="red")
lines(x,data1$Sub_metering_3,type="l",col="blue")
legend("topright", lty=1, col=c("black","red","blue"), 
      legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
      y.intersp=0.5, cex=1)
dev.copy(png,"plot3.png")
dev.off()
