# This additional file explains how to get the data from the internet and to prepare them, in order to make the plotting code more readable

fileUrl <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip"
download.file(fileUrl, destfile = "./household_power_consumption.zip")

#the file is zipped, and needs to be extracted. It is possible to do it by hand or with the commands

unzip_file <- unz("./household_power_consumption.zip", "household_power_consumption.txt")

#now prepare the data for the analysis, as required:

tab <- read.table(unzip_file, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

#Subset the only dates we are interested in:

tab <- tab[(tab$Date == "1/2/2007") | (tab$Date == "2/2/2007"),]

#Converting the Date and Time variable in the right class:

tab$DateTime <- strptime(paste(tab$Date, tab$Time), "%d/%m/%Y %H:%M:%S")

#Setting the subsetted dataset as a stand-alone file to work with:

emptyfile <- "data_for_plots.csv"

write.csv(tab, emptyfile)


