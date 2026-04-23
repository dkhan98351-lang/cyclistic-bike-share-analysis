# 07_top_stations.R
# Cyclistic Bike-Share - Data Analyse Phase
# Created: November 16, 2025
# Purpose: Organising top 20 stations used by casual as well as member riders


# Load required libraries
library(tidyverse)
library(lubridate)


# importing data
all_trips <- read.csv("C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/all_trips_merged.csv")


# Top 20 start stations for members
top_member_stations <- all_trips %>%
  filter(member_casual == "member") %>%
  count(start_station_name, start_station_id, sort = TRUE) %>%
  head(20)

# Top 20 start stations for casual riders
top_casual_stations <- all_trips %>%
  filter(member_casual == "casual") %>%
  count(start_station_name, start_station_id, sort = TRUE) %>%
  head(20)


# saving required files

write.csv(top_casual_stations, "C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/top_casual_stations.csv")
write.csv(top_member_stations, "C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/top_member_stations.csv")
