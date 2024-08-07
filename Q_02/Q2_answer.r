# Load necessary library
library(data.tree)

# Define the decision tree structure
decision_tree <- Node$new("Decision")

# Adding the "Expand" and "Don't Expand" branches
expand <- decision_tree$AddChild("Expand")
dont_expand <- decision_tree$AddChild("Don't Expand")

# Adding the economy conditions to the "Expand" branch
expand_good <- expand$AddChild("Good Economy")
expand_good$cost <- 7 - 2
expand_bad <- expand$AddChild("Bad Economy")
expand_bad$cost <- 3 - 2

# Adding the economy conditions to the "Don't Expand" branch
dont_expand_good <- dont_expand$AddChild("Good Economy")
dont_expand_good$cost <- 4
dont_expand_bad <- dont_expand$AddChild("Bad Economy")
dont_expand_bad$cost <- 1.5

# Calculate the expected values for each branch
expand$cost <- 0.45 * expand_good$cost + 0.55 * expand_bad$cost
dont_expand$cost <- 0.45 * dont_expand_good$cost + 0.55 * dont_expand_bad$cost

# Display the decision tree with the expected values
print(decision_tree, "cost")

# Draw the decision tree
plot(decision_tree)
