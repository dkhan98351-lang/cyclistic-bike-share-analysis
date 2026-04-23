# 05_Monthly_trends_analysis.R
# Cyclistic Bike-Share - Data Analyse Phase
# Created: November 15, 2025
# Purpose: Analysing the ride counts and average duration of member and casual members according to the month.


# Load required libraries
library(tidyverse)
library(lubridate)

# importing data
all_trips <- read.csv("C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/all_trips_merged.csv")



# Convert ride_length into secs

all_trips <- all_trips %>%
  mutate(ride_length_sec = as.numeric(hms(ride_length)))

# Labelling month names

all_trips <- all_trips %>%
  mutate(month_name = month(month, label = TRUE, abbr = FALSE))


# Monthly summary
monthly_summary <- all_trips %>%
  group_by(month_name, member_casual) %>%
  summarise(
    ride_count = n(),
    avg_duration = round(mean(ride_length_sec, na.rm = TRUE) / 60,2)
  )

# creating new monthly summary in wide format for excel

monthly_summary_wide <- monthly_summary %>%
  pivot_wider(
      names_from = member_casual,
      values_from = c(ride_count, avg_duration)
  )


# saving required files

 write.csv(monthly_summary, "C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/monthly_summary.csv")
 write.csv(monthly_summary_wide, "C:/Users/Dan/Desktop/Cyclistic_Capstone_Project/12_ANALYSIS/monthly_summary_wide.csv")


