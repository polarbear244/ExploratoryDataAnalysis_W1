library(data.table)

# File name
file_name <- "household_power_consumption.txt"

# Read data with data.table for better performance
data <- fread(file_name, sep = ";", na.strings = "?")

# Convert Date column to Date type and filter the required dates
data[, Date := as.Date(Date, format = "%d/%m/%Y")]
subset_data <- data[Date %in% as.Date(c("2007-02-01", "2007-02-02"))]

# Create histogram for Global_active_power
hist(subset_data$Global_active_power, col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
