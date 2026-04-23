# 04_day_of_the_week_analysis.R
# Cyclistic Bike-Share - Data Analyse Phase
# Created: November 14, 2025
# Purpose: Analysing the ride counts and average duration of member and casual members according to the day of the week.


# Load required libraries
library(tidyverse)
library(lubridate)

# importing data
all_trips <- read.csv("C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/all_trips_merged.csv")


# Convert ride_length into secs

all_trips <- all_trips %>%
  mutate(ride_length_sec = as.numeric(hms(ride_length)))

# Rides per day
day_counts <- all_trips %>%
  group_by(member_casual, day_of_the_week) %>%
  summarise(
    ride_count = n(),
    avg_duration = round(mean(ride_length_sec, na.rm = TRUE) / 60,2)
  )

# Reshape for Excel

day_wide <- day_counts %>%
  pivot_wider(
    names_from = member_casual,
    values_from = c(ride_count, avg_duration)
  )


#saving required files

write_csv(day_counts, "day_counts.csv")
write_csv(day_wide, "day_wide.csv")

