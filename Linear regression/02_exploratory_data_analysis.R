
# Purpose: Conduct exploratory data analysis on the bikeshare dataset

# Load libraries
library(ggplot2)

# Count vs temp plot
ggplot(bike, aes(temp, count)) +
  geom_point(alpha = 0.2, aes(color = temp)) +
  theme_bw()

# Convert datetime column into POSIXct
bike$datetime <- as.POSIXct(bike$datetime)

# Count versus datetime as a scatterplot with a color gradient based on temperature
ggplot(bike, aes(datetime, count)) +
  geom_point(aes(color = temp), alpha = 0.5) +
  scale_color_continuous(low = '#55D8CE', high = '#FF6E2E') +
  theme_bw()

# Create a boxplot, with the y axis indicating count and the x axis being a box for each season
ggplot(bike, aes(factor(season), count)) +
  geom_boxplot(aes(color = factor(season))) +
  theme_bw()
