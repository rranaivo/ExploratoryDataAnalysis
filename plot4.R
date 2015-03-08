# Construct plot housing 4 graphs for Global Active Power, Voltage, the three Sub Metering and for Global Reactive Power
plot4 <- function() {
	# Fetching for Dataset if not yet created
	if (!file.exists("hpc.csv")){
		source("reading_data.R")
		reading_data()
	}
	hpc <- read.csv("hpc.csv")
	# Reformatting the date to XPOSLt
	hpc$Date_Time <- strptime(hpc$Date_Time,"%Y-%m-%d %H:%M:%S")
	# Open PNG device
	png(filename='plot4.png',width=480,height=480,units='px')
	# Preparing margins
	par(mfrow=c(2,2))
	# Create plots
	with(hpc,{
		plot(Date_Time,Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')
		plot(Date_Time,Voltage,xlab='datetime',ylab='Voltage',type='l')
		plot(Date_Time,Sub_metering_1,type='l',col="black",xlab='',ylab='Energy sub metering')
		lines(Date_Time,Sub_metering_2,col="red")
		lines(Date_Time,Sub_metering_3,col="blue")
		legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty='solid')
		plot(Date_Time,Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')
	})
	# Close PNG device
	dev.off()
}	
	
	