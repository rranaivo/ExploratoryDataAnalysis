# Construct histogram for Global Active Power
plot1 <- function() {
	# Fetching for Dataset if not yet created
	if (!file.exists("hpc.csv")){
		source("reading_data.R")
		reading_data()
	}
	hpc <- read.csv("hpc.csv")
	# Reformatting the date to XPOSLt
	hpc$Date_Time <- strptime(hpc$Date_Time,"%Y-%m-%d %H:%M:%S")
	# Open PNG device
	png(filename='plot1.png',width=480,height=480,units='px')
	# Create histogram
	with(hpc, hist(Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red"))
	# Close PNG device
	dev.off()
}	
	
	