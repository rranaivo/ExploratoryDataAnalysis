# Construct plot for Date and Global active power
plot2 <- function() {
	# Fetching for Dataset if not yet created
	if (!file.exists("hpc.csv")){
		source("reading_data.R")
		reading_data()
	}
	hpc <- read.csv("hpc.csv")
	# Reformatting the date to XPOSLt
	hpc$Date_Time <- strptime(hpc$Date_Time,"%Y-%m-%d %H:%M:%S")
	# Open PNG device
	png(filename='plot2.png',width=480,height=480,units='px')
	# Create plot
	with(hpc, plot(Date_Time,Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l'))
	# Close PNG device
	dev.off()
}	
	
	