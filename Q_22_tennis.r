# Sample data: Points scored by tennis players
points <- c(50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 110, 120, 130, 150, 200)

# Create a horizontal box plot
boxplot(points,
        main = "Box Plot of Points Scored by Tennis Players",
        xlab = "Points",
        col = "lightblue",
        notch = TRUE,
        horizontal = TRUE)

# Add a vertical line at the median
abline(v = median(points), col = "red", lty = 2)

