## Exploratory Data Analysis - Week 1

### Number of rows and columns in the dataset
n_rows <- 2075259
n_cols <- 9

### Size of each value in bytes (assuming double precision, 8 bytes)
size_per_value <- 8

### Calculate estimated memory required in megabytes
memory_needed_mb <- (n_rows * n_cols * size_per_value) / (1024^2)

### Print the estimated memory requirement
cat(sprintf("Estimated memory required: %.2f MB\n", memory_needed_mb))
