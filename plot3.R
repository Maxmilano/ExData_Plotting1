#using the prepared "tab" file (check Prepare_data.R)

png(filename = "plot3.png", width = 480, height = 480, units = "px")  #sets the png device

cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")                                   #write the png file
plot(tab$DateTime, table$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")          #This plot is built by adding together different relationships in the same graph 
lines(tab$DateTime, table$Sub_metering_2, type="l", col="red")
lines(tab$DateTime, table$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)                        #the legend takes the cols argument defined before  

dev.off() #closes the graphic device