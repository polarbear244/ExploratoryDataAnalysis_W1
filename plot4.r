# Ensure the plotting area is set up for a 2x2 layout
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))  # Adjust margins as needed

# Define plotting function
plot_line <- function(x, y, ylab, xlab = "datetime", col = "black", add_lines = NULL, legend_info = NULL) {
  plot(x, y, xlab = xlab, ylab = ylab, type = "l", col = col)
  if (!is.null(add_lines)) {
    for (line in add_lines) {
      lines(x, line$data, col = line$col)
    }
  }
  if (!is.null(legend_info)) {
    legend("topright", legend = legend_info$text, col = legend_info$col, cex = legend_info$cex, lty = 1, bty = "n")
  }
}

# Plot 1: Global Active Power
plot_line(time_axis, data[, 3], ylab = "Global Active Power (kilowatt
