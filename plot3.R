# Construct plot for Date and the three Energy Sub Meterings
plot3 <- function() {
	# Fetching for Dataset if not yet created
	if (!file.exists("hpc.csv")){
		source("reading_data.R")
		reading_data()
	}
	hpc <- read.csv("hpc.csv")
	# Reformatting the date to XPOSLt
	hpc$Date_Time <- strptime(hpc$Date_Time,"%Y-%m-%d %H:%M:%S")
	# Open PNG device
	png(filename='plot3.png',width=480,height=480,units='px')
	# Create plots
	with(hpc,{
		plot(Date_Time,Sub_metering_1,type='l',col="black",xlab='',ylab='Energy sub metering')
		lines(Date_Time,Sub_metering_2,col="red")
		lines(Date_Time,Sub_metering_3,col="blue")
		legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty='solid')
	})
	# Close PNG device
	dev.off()
}	
	
	