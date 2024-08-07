# Define the dataset
data <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization
min_val <- min(data)
max_val <- max(data)
min_max_normalized <- (data - min_val) / (max_val - min_val)

# Print Min-Max Normalized data
print("Min-Max Normalized Data:")
print(min_max_normalized)

# (b) Z-Score Normalization
mean_val <- mean(data)
sd_val <- sd(data)
z_score_normalized <- (data - mean_val) / sd_val

# Print Z-Score Normalized data
print("Z-Score Normalized Data:")
print(z_score_normalized)

# (c) Z-Score Normalization using Mean Absolute Deviation (MAD)
mad_val <- mean(abs(data - mean_val))
z_score_mad_normalized <- (data - mean_val) / mad_val

# Print Z-Score Normalized data using MAD
print("Z-Score Normalized Data using MAD:")
print(z_score_mad_normalized)

# (d) Normalization by Decimal Scaling
j <- ceiling(log10(max(abs(data))))
decimal_scaled_normalized <- data / (10^j)

# Print Decimal Scaled Normalized data
print("Decimal Scaled Normalized Data:")
print(decimal_scaled_normalized)
