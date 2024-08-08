# Ensure the necessary library is loaded
library(ggplot2)

# Assuming 'data' is a data.table or data frame and 'time_axis' is already defined
# Precompute the plot data
plot_data <- data[, .(Time = time_axis, 
                       Sub_metering_1 = V7, 
                       Sub_metering_2 = V8, 
                       Sub_metering_3 = V9)]

# Basic plot with the first line
plot(plot_data$Time, plot_data$Sub_metering_1, 
     type = "l", 
     col = "black", 
     xlab = "", 
     ylab = "Energy sub metering")

# Add additional lines
lines(plot_data$Time, plot_data$Sub_metering_2, col = "red")
li
