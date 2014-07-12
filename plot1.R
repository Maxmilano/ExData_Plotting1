#using the prepared "tab" file (check Prepare_data.R)

png(filename = "plot1.png", width = 480, height = 480, units = "px") #sets the png device

with(tab, {hist(Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red" )}) #write the png file

dev.off() #closes the graphic device