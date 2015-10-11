##setting directory
setwd("C:/Users/Mariza/Documents/Cursos/Especialización estadística/Exploratory Data Analysis")

##variable holding the data base
householdFile <- "C:/Users/Mariza/Documents/Cursos/Especialización estadística/Exploratory Data Analysis/data/household_power_consumption.txt"

##having troubles reading de variable, so creating by other way
householdfile <- read.table("C:/Users/Mariza/Documents/Cursos/Especialización estadística/Exploratory Data Analysis/data/household_power_consumption.txt")

##begginning plotting instructions
plotData <- read.table("C:/Users/Mariza/Documents/Cursos/Especialización estadística/Exploratory Data Analysis/data/household_power_consumption.txt", header=T, sep=";", na.strings="?")

##changing time variables
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)

##plot 1
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
