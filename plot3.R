plot3 <- function() {
	if (!file.exists("hpc.csv")){
		source("reading_data.R")
		reading_data()
	}
	hpc <- read.csv("hpc.csv")
	hpc$Date_Time <- strptime(hpc$Date_Time,"%Y-%m-%d %H:%M:%S")
	png(filename='plot3.png',width=480,height=480,units='px')
	plot(hpc$Date_Time,hpc$Sub_metering_1,type='l',col="black",xlab='',ylab='Energy sub metering')
	lines(hpc$Date_Time,hpc$Sub_metering_2,col="red")
	lines(hpc$Date_Time,hpc$Sub_metering_3,col="blue")
	legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty='solid')
	x<-dev.off()
}	
	
	