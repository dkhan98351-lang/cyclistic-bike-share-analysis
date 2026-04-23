# 01_load_and_merge.R
# Cyclistic Bike-Share - Data Analyse Phase
# Created: November 13, 2025
# Purpose: Load and merge 12 months of Divvy trip data

# Load required libraries
library(tidyverse)
library(lubridate)

# Read all 12 months of cleaned data
files <- list.files(path = "C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/11_CONVERTED_DATA", 
                    pattern = "*_cleaned.csv", 
                    full.names = TRUE)

# Combine all files
all_trips <- files %>%
  map_df(~read_csv(.))

# Save merged dataset
write_csv(all_trips, "all_trips_merged.csv")
