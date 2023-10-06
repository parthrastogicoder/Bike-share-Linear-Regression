
# Purpose: Perform feature engineering on the bikeshare dataset

# Create an "hour" column that takes the hour from the datetime column
bike$hour <- sapply(bike$datetime, function(x) { format(x, "%H") })

# Plot improvements
library(dplyr)

pl <- ggplot(filter(bike, workingday == 1), aes(hour, count)) 

pl <- pl + geom_point(position = position_jitter(w = 1, h = 0), aes(color = temp), alpha = 0.5)

pl <- pl + scale_color_gradientn(colours = c('dark blue', 'blue', 'light blue', 'light green', 'yellow', 'orange', 'red'))

pl + theme_bw()
