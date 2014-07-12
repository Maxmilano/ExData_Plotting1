#using the prepared "tab" file (check Prepare_data.R)

png(filename = "plot2.png", width = 480, height = 480, units = "px") #starts the png device

with(tab, {plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l")})  #write the png file

dev.off() #closes the graphic device