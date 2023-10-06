
# Purpose: Build and evaluate linear regression models on the bikeshare dataset

# Build a model to predict count based on temperature
temp.model <- lm(count ~ temp, bike)

# Get the summary of the temp.model
summary(temp.model)

# To Predict value for a specific temperature (e.g., 25°C)
temp.test <- data.frame(temp = c(25))
predict(temp.model, temp.test)

# Change the hour column to a column of numeric values
bike$hour <- sapply(bike$hour, as.numeric)

# Build a model that predicts count based on various features
model <- lm(count ~ . - casual - registered - datetime - atemp, bike)
