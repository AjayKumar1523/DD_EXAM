# Given data
prices <- c(5, 10, 11, 13, 15, 35, 50, 55, 72, 92, 204, 215)

# Number of bins
k <- 3

# (a) Equal-Frequency (Equal-Depth) Partitioning
bins_equal_freq <- cut(prices, breaks = seq(0, length(prices), length.out = k + 1), labels = FALSE)
bins_equal_freq_result <- split(prices, bins_equal_freq)

# (b) Equal-Width Partitioning
range_prices <- range(prices)
bin_width <- (range_prices[2] - range_prices[1]) / k
bins_equal_width <- cut(prices, breaks = seq(range_prices[1], range_prices[2], length.out = k + 1), labels = FALSE)
bins_equal_width_result <- split(prices, bins_equal_width)

# (c) Clustering
set.seed(123)  # For reproducibility
clustering_result <- kmeans(prices, centers = k)
bins_clustering_result <- split(prices, clustering_result$cluster)

# Display results
cat("Equal-Frequency (Equal-Depth) Partitioning:\n")
print(bins_equal_freq_result)

cat("\nEqual-Width Partitioning:\n")
print(bins_equal_width_result)

cat("\nClustering:\n")
print(bins_clustering_result)

