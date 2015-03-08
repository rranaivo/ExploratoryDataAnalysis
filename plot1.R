plot1 <- function() {
	if (!file.exists("hpc.csv")){
		source("reading_data.R")
		reading_data()
	}
	hpc <- read.csv("hpc.csv")
	hpc$Date_Time <- strptime(hpc$Date_Time,"%Y-%m-%d %H:%M:%S")
	png(filename='plot1.png',width=480,height=480,units='px')
	hist(hpc$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
	x<-dev.off()
}	
	
	