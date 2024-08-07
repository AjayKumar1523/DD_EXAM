# Data: Number of pencils in each box
pencils <- c(25, 23, 12, 11, 6, 7, 8, 9, 10)

# Calculating mean
mean_pencils <- mean(pencils)

# Calculating median
median_pencils <- median(pencils)

# Calculating mode function
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

mode_pencils <- get_mode(pencils)

# Output the results
mean_pencils
median_pencils
mode_pencils

