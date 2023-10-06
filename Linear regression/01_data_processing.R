
# Purpose: Load necessary libraries and read data

# Load libraries
library(tidyverse)

# Read the bikeshare data
bike <- read.csv("train.csv")
bike$datetime <- as.POSIXct(bike$datetime)
