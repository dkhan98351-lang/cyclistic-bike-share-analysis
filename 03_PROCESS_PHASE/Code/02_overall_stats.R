# 02_overall_stats.R
# Cyclistic Bike-Share - Data Analyse Phase
# Created: November 14, 2025
# Purpose: Getting overall stats

# Load required libraries
library(tidyverse)
library(lubridate)

# importing data
all_trips <- read.csv("C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/all_trips_merged.csv")


# Total rides
total_rides <- nrow(all_trips)

# Rides by member type
member_rides <- sum(all_trips$member_casual == "member")
casual_rides <- sum(all_trips$member_casual == "casual")

# Percentages
member_pct <- round((member_rides / total_rides) * 100,2)
casual_pct <- round((casual_rides / total_rides) * 100,2)

#summarising overall stats
overall_stats<- all_trips%>%
  summarise(
    total_rides,
    member_rides,
    casual_rides,
    member_pct,
    casual_pct
  )

write.csv(overall_stats, "overall_stats.csv")