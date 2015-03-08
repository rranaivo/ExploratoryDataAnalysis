Exploratory Data Analysis
===========================
The goal is to write scripts to construct plots based on "Individual household electric power consumption Data Set" for the two dates 20017-02-01 and 2007-02-02:
<ol>
<li> Plot 1: Construct histogram for Global Active Power </li>
<li> Plot 2: Construct plot for Date and Global active power </li>
<li> Plot 3: Construct plot for Date and the three Energy Sub Meterings </li>
<li> Plot 4: # Construct plot housing 4 graphs for Global Active Power, Voltage, the three Sub Metering and for Global Reactive Power </li>
<li> Reading Data: this script is upload Data from the website and format it to include only data within the date range, and finally save new data into new csv (hpc.csv) with the following variables: </li>
</ol>
* Date_Time: Date and time in XPOSlt format
* Global_active_power: household global minute-averaged active power (in kilowatt)
* Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
* Voltage: minute-averaged voltage (in volt)
* Global_intensity: household global minute-averaged current intensity (in ampere)
* Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
* Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
* Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.