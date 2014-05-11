#create the type of the columns
colClassess <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
#Load the complete data
data <- read.table(file="household_power_consumption.txt",header=TRUE, sep=";", colClasses= colClassess)
rm(colClassess)
#subset the interet data
data <- data[66638:69517,]
#Make a vector with the time and hours for plotting
horario <- paste(data[,1], data[,2])
horario <- strptime(horario[], format = "%d/%m/%Y %H:%M:%S")
#Create the plot
par(mfcol= c(1,1), mar = c(4,4,2,2))
hist(x = data[,3], main = "Global Active Power", xlab = "Global Active Power [kW]", col = "orange")
dev.copy(png, "plot1.png")
dev.off()
