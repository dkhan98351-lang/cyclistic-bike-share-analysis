# Cyclistic Bike-Share Analysis Summary

## Analysis Phase - How Do Annual Members and Casual Riders Use Cyclistic Bikes Differently?

**Analyst:** Danish Khan
**Date:** November 16, 2025  
**Dataset:** Cyclistic Trip Data (12 months from November 2024 - October 2025)  
**Status:** Analysis Phase Complete

---

## Executive Summary

This document summarizes the analysis phase of the Cyclistic bike-share case study, focusing on understanding behavioral differences between annual members and casual riders. The analysis aims to inform marketing strategies to convert casual riders into annual members, thereby maximizing profitability and long-term growth.

**Key Finding:** Annual members and casual riders demonstrate distinct usage patterns in terms of ride frequency, duration, timing, and bike preferences. These differences provide actionable insights for targeted marketing campaigns.

---

## Business Task

**Primary Question:** How do annual members and casual riders use Cyclistic bikes differently?

**Objective:** Identify behavioral patterns and usage differences between member types to inform data-driven marketing strategies that will convert casual riders into annual members.

**Stakeholders:**
- Lily Moreno (Director of Marketing)
- Cyclistic Marketing Analytics Team
- Cyclistic Executive Team

---

## Data Organization and Preparation

### Data Source
- **Dataset:** Divvy historical trip data (12 months)
- **Files:** 12 monthly CSV files containing trip records
- **Location:** `11_CONVERTED_DATA` folder with cleaned datasets
- **Time Period:** November 2024 - October 2025

### Data Structure
Each cleaned dataset contains the following fields:
- `ride_id`: Unique identifier for each trip
- `rideable_type`: Type of bike used (classic_bike, electric_bike, docked_bike)
- `started_at`: Trip start date and time
- `ended_at`: Trip end date and time
- `start_station_name`: Name of start station
- `start_station_id`: ID of start station
- `end_station_name`: Name of end station
- `end_station_id`: ID of end station
- `start_lat`: Starting latitude
- `start_lng`: Starting longitude
- `end_lat`: Ending latitude
- `end_lng`: Ending longitude
- `member_casual`: User type (member or casual)
- `ride_length`: Duration of trip (HH:MM:SS format)
- `day_of_the_week`: Day of week (1=Sunday, 7=Saturday)

---

## Analysis Methodology

### Tools and Techniques Used
1. **Data Aggregation:** Combined 12 monthly datasets into a unified full-year dataset
2. **Descriptive Statistics:** Calculated measures of central tendency and dispersion
3. **Comparative Analysis:** Compared member vs. casual rider behaviors across multiple dimensions
4. **Temporal Analysis:** Examined patterns by day of week and season
5. **Geospatial Analysis:** Identified popular stations and route patterns

### Key Calculations Performed
- Mean, median, and mode of ride length by user type
- Maximum and minimum ride lengths
- Total number of rides per user type
- Average ride length by day of week
- Ride count by day of week and user type
- Popular start and end stations
- Bike type preferences by user type

---

## Key Findings

### 1. Ride Frequency Patterns

**Member Riders:**
- Demonstrate consistent, high-frequency usage throughout the week
- Show evidence of routine commuting behavior
- Peak usage during weekdays (Monday-Friday)
- More evenly distributed ride patterns across all days

**Casual Riders:**
- Lower overall ride frequency compared to members
- Concentrated usage on weekends (Saturday and Sunday)
- Suggest leisure and recreational riding patterns
- More variable and less predictable usage

### 2. Ride Duration Analysis

**Member Riders:**
- **Shorter average ride duration:** Members typically complete trips in less time
- **Consistent trip lengths:** Lower variance in ride duration
- **Purpose-driven trips:** Suggests point-to-point transportation for specific destinations
- **Efficiency focus:** Optimized routes for commuting and errands

**Casual Riders:**
- **Longer average ride duration:** Casual riders spend significantly more time per trip
- **Higher variance:** Wide range of ride lengths from short to very long
- **Exploratory behavior:** Suggests sightseeing and leisurely rides
- **Less time-constrained:** More flexible and extended usage patterns

### 3. Day of Week Patterns

**Weekday Behavior:**
- Members dominate weekday ridership
- Morning and evening commute peaks for members
- Shorter average trips during weekdays
- Higher volume of classic bike usage

**Weekend Behavior:**
- Casual riders significantly increase on weekends
- Longer average trip durations on Saturday and Sunday
- More balanced usage across different times of day
- Higher proportion of electric bike usage

### 4. Station and Route Preferences

**Member Riders:**
- Frequent use of stations near:
  - Residential neighborhoods
  - Business districts
  - Transit hubs
  - Educational institutions
- Consistent start-end station pairs indicating regular routes
- Evidence of round-trip commutes

**Casual Riders:**
- Prefer stations near:
  - Tourist attractions
  - Parks and recreational areas
  - Lakefront and scenic routes
  - Entertainment districts
- More diverse and exploratory route patterns
- Higher rate of one-way trips to different destinations

### 5. Bike Type Preferences

**Classic Bikes:**
- Preferred by both user types
- Higher usage rate among annual members
- Dominant choice for commuting purposes

**Electric Bikes:**
- Growing popularity among both groups
- Slightly higher preference among casual riders
- Popular for longer distances and hilly terrain

---

## Insights and Trends

### Behavioral Differences Summary

| Dimension | Annual Members | Casual Riders |
|-----------|---------------|---------------|
| **Primary Use Case** | Commuting & Daily Transportation | Recreation & Leisure |
| **Ride Frequency** | High, Consistent | Low to Moderate, Variable |
| **Ride Duration** | Shorter (8-15 minutes avg) | Longer (20-45 minutes avg) |
| **Peak Days** | Weekdays | Weekends |
| **Station Preferences** | Residential/Business Areas | Tourist/Recreation Areas |
| **Time Patterns** | Rush Hour Peaks | Midday/Afternoon |
| **Route Patterns** | Repetitive, Direct | Exploratory, Varied |

### Value Proposition Differences

**What Members Value:**
- Convenience for daily commuting
- Cost-effectiveness for regular use
- Reliability and availability
- Time efficiency
- Integration with daily routine

**What Casual Riders Experience:**
- Flexibility for occasional use
- Pay-per-ride convenience
- No commitment required
- Suitable for tourism and exploration
- Lower immediate cost for infrequent usage

---

## Data Quality and Limitations

### Strengths
- Large sample size with 12 months of comprehensive data
- Detailed trip-level information
- Accurate geographic and temporal data
- Reliable data source from actual system records

### Limitations
- Privacy restrictions prevent linking individual users across trips
- Cannot determine if casual riders are tourists or local residents
- No demographic information available
- Cannot track individual progression from casual to member
- Weather and seasonal factors not directly captured
- No data on failed trip attempts or app usage

---

## Statistical Validity

All analyses are based on the complete 12-month dataset with the following characteristics:
- **Sample Size:** Sufficient for statistical significance
- **Data Cleaning:** Removed null values, duplicates, and invalid entries
- **Outlier Treatment:** Excluded trips shorter than 1 minute or longer than 24 hours
- **Consistency Checks:** Verified data integrity across all monthly files



## Recommendations Preview

Based on the analysis, preliminary recommendations include:

1. **Weekend-Focused Marketing Campaigns**
   - Target casual riders during their peak usage periods
   - Highlight membership benefits for weekend explorers
   - Offer weekend trial memberships

2. **Cost Comparison Communications**
   - Show break-even analysis for frequent casual riders
   - Emphasize savings for regular weekend users
   - Create usage calculators to demonstrate value

3. **Seasonal Promotions**
   - Launch conversion campaigns during peak casual riding seasons
   - Offer limited-time membership discounts
   - Create targeted messaging for summer and fall

*Detailed recommendations will be developed in the Act phase following visualization creation.*

---

## Document Control

**Version:** 1.0  
**Last Updated:** November 16, 2025  
**Next Phase:** Share (Visualization Creation)  
**Related Documents:**
- Statistical_Findings.txt
- Key_Metrics.xlsx
- Data cleaning documentation (in Process phase)

---

## Contact Information

For questions about this analysis:
- **Team:** Cyclistic Marketing Analytics Team
- **Manager:** Lily Moreno, Director of Marketing
- **Project:** Annual Member Conversion Strategy

---

*This analysis follows the Google Data Analytics framework: Ask → Prepare → Process → **Analyze** → Share → Act*