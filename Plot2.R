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

# plot 2: Global_active_power change with time
plot(x,data1$Global_active_power,type="l", xlab=" ", ylab="Global Active Power (kilowatts)")
dev.copy(png,"plot2.png")
dev.off()
