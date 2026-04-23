# 06_bike_types.R
# Cyclistic Bike-Share - Data Analyse Phase
# Created: November 16, 2025
# Purpose: Analysing the ride counts according to the different bike types and members


# Load required libraries
library(tidyverse)
library(lubridate)


# importing data
all_trips <- read.csv("C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/all_trips_merged.csv")

# Bike type counts
bike_types <- all_trips %>%
  group_by(rideable_type, member_casual) %>%
  summarise(ride_count = n()) %>%
  mutate(percentage = round((ride_count / sum(ride_count)) * 100,2))


# transforming the data into wide data for excel


bike_types_wide <- bike_types %>%
 pivot_wider(
     names_from = member_casual,
     values_from = c(ride_count,percentage)
 )


# saving required files

write.csv(bike_types_wide, "C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/bike_types_wide.csv")



