# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the dataset
# Assuming the dataset is in the current working directory
# Replace 'path_to_your_file' with the actual path if necessary
diabetes_data <- read.csv("C:/Users/ecute/Downloads/diabetes(1).csv")

# Display the first few rows of the dataset
head(diabetes_data)

# Scatter plot of BloodPressure vs Age
ggplot(diabetes_data, aes(x = Age, y = BloodPressure)) +
  geom_point(color = "blue", alpha = 0.6) +
  labs(title = "Scatter Plot of Blood Pressure vs Age",
       x = "Age",
       y = "Blood Pressure") +
  theme_minimal()

# Create age groups
diabetes_data <- diabetes_data %>%
  mutate(AgeGroup = cut(Age, breaks = seq(20, 90, by = 10), right = FALSE, 
                        labels = c("20-29", "30-39", "40-49", "50-59", "60-69", "70-79", "80-89")))

# Summary of age groups
summary(diabetes_data$AgeGroup)

# Bar chart of average blood pressure by age group
avg_bp_by_age_group <- diabetes_data %>%
  group_by(AgeGroup) %>%
  summarize(AvgBloodPressure = mean(BloodPressure, na.rm = TRUE))

ggplot(avg_bp_by_age_group, aes(x = AgeGroup, y = AvgBloodPressure, fill = AgeGroup)) +
  geom_bar(stat = "identity", color = "black", alpha = 0.7) +
  labs(title = "Average Blood Pressure by Age Group",
       x = "Age Group",
       y = "Average Blood Pressure") +
  theme_minimal() +
  theme(legend.position = "none")

# If you want to save the plots
ggsave("scatter_plot_bp_vs_age.png")
ggsave("bar_chart_avg_bp_by_age_group.png")
