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

# plot 1: histogram of Global_active_power
data1$Global_active_power <- as.numeric(data1$Global_active_power)
hist(data1$Global_active_power,col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png,"plot1.png")
dev.off()

