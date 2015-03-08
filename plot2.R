plot2 <- function() {
	if (!file.exists("hpc.csv")){
		source("reading_data.R")
		reading_data()
	}
	hpc <- read.csv("hpc.csv")
	hpc$Date_Time <- strptime(hpc$Date_Time,"%Y-%m-%d %H:%M:%S")
	png(filename='plot2.png',width=480,height=480,units='px')
	plot(hpc$Date_Time,hpc$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')
	x<-dev.off()
}	
	
	