================================================================================
CYCLISTIC BIKE-SHARE ANALYSIS - STATISTICAL FINDINGS
================================================================================

Project: Cyclistic Capstone Case Study
Phase: ANALYZE
Date: November 16, 2025
Analyst: Danish Khan
Dataset: 12 months (November 2024 - October 2025)

================================================================================
1. DESCRIPTIVE STATISTICS SUMMARY
================================================================================

1.1 OVERALL DATASET METRICS
----------------------------
Total Rides Analyzed: 3738787
Data Quality: All null values removed, outliers filtered
Time Period: November 2024 - October 2025 (12 complete months)
Geographic Area: Chicago, Illinois (Cyclistic service area)

1.2 USER TYPE DISTRIBUTION
---------------------------
Annual Members:
  - Total Rides: 2401554
  - Percentage of Total: 64.23%

Casual Riders:
  - Total Rides: 1337233
  - Percentage of Total: 35.77%

Key Finding: Members account for the majority of total rides, indicating 
strong membership adoption but significant opportunity in casual rider 
conversion.

================================================================================
2. RIDE LENGTH ANALYSIS
================================================================================

2.1 CENTRAL TENDENCY MEASURES
------------------------------

ANNUAL MEMBERS:
  Mean Ride Length: 12.17 minutes
  Median Ride Length: 8.68 minutes
  Mode Ride Length: 4.95 minutes

  Interpretation: Members demonstrate consistent, shorter trip durations
  typical of commuting and purposeful transportation.

CASUAL RIDERS:
  Mean Ride Length: 22.22 minutes
  Median Ride Length: 12.8 minutes
  Mode Ride Length: 5.97 minutes

  Interpretation: Casual riders take significantly longer trips with higher
  variance, suggesting recreational and exploratory usage patterns.

2.2 COMPARATIVE STATISTICS
--------------------------
Difference in Mean: Casual riders average 10.05 minutes longer per trip
Percentage Difference: Casual rides are 82.58% longer on average

Difference in Median: Casual riders’ median trip is 4.12 minutes longer than member riders.
Percentage Difference: Casual riders’ median trip duration is 47.47% longer than members.

Difference in Mode: The most common casual trip is 1.02 minutes longer than the most common member trip.
Percentage Difference: Casual riders’ mode trip duration is 20.61% longer than members.


================================================================================
3. TEMPORAL PATTERNS
================================================================================

3.1 DAY OF WEEK ANALYSIS
-------------------------

WEEKDAY DISTRIBUTION (Monday-Friday):
  Annual Members: 74.84% of total member rides
  Casual Riders: 66.40% of total casual rides

  Key Finding: Members heavily favor weekdays for commuting purposes

WEEKEND DISTRIBUTION (Saturday-Sunday):
  Annual Members: 25.16% of total member rides  
  Casual Riders: 33.60% of total casual rides

  Key Finding: Casual riders show marked increase in weekend activity,
  suggesting leisure-oriented usage

3.2 DAILY RIDE COUNTS
---------------------
Day          | Member Rides | Casual Rides | Total Rides
-------------|--------------|--------------|-------------
Sunday       | 284901       | 204354       | 489255
Monday       | 348563       | 170474       | 519037
Tuesday      | 369982       | 168779       | 538761
Wednesday    | 351412       | 161386       | 512798
Thursday     | 367034       | 179339       | 546373
Friday       | 360452       | 207963       | 568415
Saturday     | 319210       | 244938       | 564148

Peak Day - Members: Tuesday
Peak Day - Casual: Saturday

3.3 AVERAGE RIDE LENGTH BY DAY
------------------------------
Day          | Member Avg (min) | Casual Avg (min) | Difference
-------------|------------------|------------------|------------
Sunday       | 12.61            | 23.36            | +10.75
Monday       | 11.96            | 22.17            | +10.21
Tuesday      | 12.04            | 21.50            | + 9.46
Wednesday    | 11.96            | 21.27            | + 9.31
Thursday     | 12.03            | 21.62            | + 9.59
Friday       | 12.16            | 21.99            | + 9.83
Saturday     | 12.59            | 23.05            | +10.46

Trend: Casual riders consistently take longer trips every day of the week

3.4 SEASONAL PATTERNS
---------------------
Winter (Dec-Feb): Lower overall ridership, member-dominant
Spring (Mar-May): Increasing casual ridership, warming trends
Summer (Jun-Aug): Peak casual ridership, tourism impact visible
Fall (Sep-Nov): Moderate ridership, members maintain consistency

================================================================================
4. BIKE TYPE PREFERENCES
================================================================================

4.1 OVERALL BIKE TYPE DISTRIBUTION
-----------------------------------
Classic Bike:  53.51% of total rides
Electric Bike: 46.49% of total rides  

4.2 BIKE TYPE BY USER TYPE
---------------------------

ANNUAL MEMBERS:
  Classic Bike: 54.76% of member rides
  Electric Bike: 45.24% of member rides

  Preference: Strong preference for classic bikes

CASUAL RIDERS:
  Classic Bike: 51.29% of casual rides
  Electric Bike: 48.71% of casual rides

  Preference: More balanced usage, higher electric bike adoption


================================================================================
5. GEOGRAPHIC ANALYSIS
================================================================================

5.1 POPULAR START STATIONS - MEMBERS
-------------------------------------
Rank | Station Name                          | Ride Count
-----|---------------------------------------|------------
1    | Kingsbury St & Kinzie St              | 27857
2    | Clinton St & Washington Blvd          | 22815
3    | Clinton St & Madison St               | 20152
4    | Clark St & Elm St                     | 19211
5    | Canal St & Madison St                 | 19174

Characteristics: Business districts, residential areas, transit hubs

5.2 POPULAR START STATIONS - CASUAL RIDERS
-------------------------------------------
Rank | Station Name                        | Ride Count
-----|-------------------------------------|------------
1    | DuSable Lake Shore Dr & Monroe St   | 28777
2    | Streeter Dr & Grand Ave             | 23901
3    | Navy Pier                           | 23192
4    | Michigan Ave & Oak St               | 16060
5    | DuSable Lake Shore Dr & North Blvd  | 14172

Characteristics: Tourist attractions, parks, lakefront, entertainment

5.3 STATION OVERLAP ANALYSIS
----------------------------
Shared Popular Stations: DuSable Lake Shore Dr & North Blvd and Theater on the Lake stations appear in both top-20 lists

Geographic Insight: Clear spatial segregation indicates different use cases
and can inform targeted station-based marketing

================================================================================
6. RIDE FREQUENCY PATTERNS
================================================================================


6.1 MONTHLY TRENDS
------------------
Month        | Member Rides | Casual Rides | Casual %
-------------|--------------|--------------|----------
January      | 84130        |  17110       | 16.90%
February     | 89937        |  19632       | 17.92%
March        | 148167       |  61673       | 29.39%
April        | 181852       |  77004       | 29.75%
May          | 214999       | 125635       | 36.88%
June         | 253200       | 193163       | 43.27%
July         | 285553       | 208740       | 42.23%
August       | 294333       | 221200       | 42.91%
September    | 295381       | 172500       | 36.87%
October      | 274347       | 143530       | 34.35%
November     | 177148       |  68823       | 27.98%
December     | 102507       |  28223       | 21.59%

Seasonal Coefficient of Variation:
  Members: Lower (more consistent year-round)
  Casual: Higher (weather-dependent, tourism-driven)


================================================================================
DOCUMENT CONTROL
================================================================================

Version: 1.0
Created: November 16, 2025
Phase: ANALYZE
Next Phase: SHARE (Visualization Development)
Status: COMPLETE

Prepared by: Cyclistic Marketing Analytics Team
Reviewed by: [Pending]
Approved by: [Pending - Lily Moreno]

Related Files:
  - Analysis_Summary.md
  - Key_Metrics.xlsx
  - Data cleaning documentation (Process phase)

================================================================================
END OF STATISTICAL FINDINGS REPORT
================================================================================
