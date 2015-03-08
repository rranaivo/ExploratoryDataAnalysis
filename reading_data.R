reading_data <- function (){
		data.url <-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
		df <- "hpc.zip"
		download.file(data.url,destfile=df)
		unzip(df)
		file.remove("hpc.zip")
		hpc <- read.table("household_power_consumption.txt",na.strings="?",header=TRUE, sep=";",colClasses=c(rep("character",2),rep("numeric",7)))
		file.remove("household_power_consumption.txt")
		hpc <- hpc [hpc$Date %in% c("1/2/2007","2/2/2007"),]
		hpc$Date_Time <- strptime(paste(as.character(as.Date(hpc$Date,"%d/%m/%Y")),hpc$Time),"%Y-%m-%d %H:%M:%S")
		hpc<-hpc[,c("Date_Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")]
		write.csv(hpc,file="hpc.csv",row.names=FALSE)
}

