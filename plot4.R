plot4 <- function() {
	if (!file.exists("hpc.csv")){
		source("reading_data.R")
		reading_data()
	}
	hpc <- read.csv("hpc.csv")
	hpc$Date_Time <- strptime(hpc$Date_Time,"%Y-%m-%d %H:%M:%S")
	png(filename='plot4.png',width=480,height=480,units='px')
	par(mfrow=c(2,2))
	
	plot(hpc$Date_Time,hpc$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')
	
	plot(hpc$Date_Time,hpc$Voltage,xlab='datetime',ylab='Voltage',type='l')
	
	plot(hpc$Date_Time,hpc$Sub_metering_1,type='l',col="black",xlab='',ylab='Energy sub metering')
	lines(hpc$Date_Time,hpc$Sub_metering_2,col="red")
	lines(hpc$Date_Time,hpc$Sub_metering_3,col="blue")
	legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty='solid')
	
	plot(hpc$Date_Time,hpc$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')
	
	x<-dev.off()
}	
	
	