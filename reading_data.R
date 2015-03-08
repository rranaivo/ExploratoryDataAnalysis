# Upload Data from the website and format it to include only data within the date range, and finally save new data into new csv file for future use.
reading_data <- function (){
	# Download and unzip dataset from the website 
	data.url <-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
	df <- "hpc.zip"
	download.file(data.url,destfile=df)
	unzip(df)
	# Delete zip file as no longer needed
	file.remove("hpc.zip")
	# Read dataset into table "hpc" with variables' appropriate format 
	hpc <- read.table("household_power_consumption.txt",na.strings="?",header=TRUE, sep=";",colClasses=c(rep("character",2),rep("numeric",7)))
	# Delete txt file as no longer needed
	file.remove("household_power_consumption.txt")
	# Filter table to include only observations within the two dates
	hpc <- hpc [hpc$Date %in% c("1/2/2007","2/2/2007"),]
	# Added POSIxlt formatted Date Time out of Date and Time variables 
	hpc$Date_Time <- strptime(paste(as.character(as.Date(hpc$Date,"%d/%m/%Y")),hpc$Time),"%Y-%m-%d %H:%M:%S")
	# Removing Date and Time variables and replacing them with Date_Time variable
	hpc<-hpc[,c("Date_Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")]
	# Save table into "hpc.csv" for future plotting use
	write.csv(hpc,file="hpc.csv",row.names=FALSE)
}

