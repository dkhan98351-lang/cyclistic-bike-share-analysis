# 03_ride_length_stats.R
# Cyclistic Bike-Share - Data Analyse Phase
# Created: November 14, 2025
# Purpose: Calulate ride length statistics


# Load required libraries
library(tidyverse)
library(lubridate)
library(statip)

# importing data
all_trips <- read.csv("C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/all_trips_merged.csv")



# Convert ride_length to numeric (seconds or minutes)

all_trips <- all_trips %>%
  mutate(ride_length_sec = as.numeric(hms(ride_length)))

# Statistics by member type

ride_stats <- all_trips %>%
 group_by(member_casual)%>%
 summarise(
     mean_length = round(mean(ride_length_sec, na.rm = TRUE)/60,2),
     mode_length = round(mfv(ride_length_sec, na.rm = TRUE)/60,2),
     median_length = round(median(ride_length_sec, na.rm = TRUE)/60, 2),
     min_length = round(min(ride_length_sec, na.rm = TRUE)/60, 2),
     max_length = round(max(ride_length_sec, na.rm = TRUE)/60, 2)
 )

write.csv(ride_stats, "ride_stats.csv")