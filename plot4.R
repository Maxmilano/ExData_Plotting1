#using the prepared "tab" file (check Prepare_data.R)

png(filename = "plot4.png", width = 480, height = 480, units = "px")    #starts the png graphic device
par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))       #This code sets the image to contain the 4 different graphs, the order of the graph and other settings
with(tab, {
        plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l") #This the same graph as plot2.r
      
        plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l")                 #Second graph to the left, similar in concept to the previous one 
        
        cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")                     #This equal to the plot3.r graph
        plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(DateTime, Sub_metering_2, type="l", col="red")
        lines(DateTime, Sub_metering_3, type="l", col="blue")
        legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols, bty="n")
        
        plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l") #Similar to the first two graphs, with another y variable       
})    
dev.off()   #closes the graphic device