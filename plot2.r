# Ensure the necessary library is loaded
library(data.table)

# Load data (assuming data.table has already been used to load data)
# data <- fread("household_power_consumption.txt", sep = ";", na.strings = "?")

# Convert Date and Time columns to POSIXct directly
data[, DateTime := as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")]

# Plot Global Active Power over Time
plot(data$DateTime, data$Global_active_power, 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)", 
     type = "l")
