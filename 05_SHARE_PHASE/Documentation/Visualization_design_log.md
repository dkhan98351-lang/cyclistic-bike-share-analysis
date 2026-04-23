# Visualization Design Log
## Cyclistic Bike-Share Case Study - Share Phase

**Analyst:** Danish Khan
**Date:** April 2026

### 1. Overview and Design Philosophy
The primary goal of the visualizations in this project was to translate 3.7 million rows of raw data into digestible, executive-ready insights. The design philosophy centered on **clarity, consistency, and immediate business value.** Visual clutter (chart junk) was removed to ensure stakeholders focus entirely on the behavioral differences between Annual Members and Casual Riders.

### 2. General Design Principles Applied
* **Color Palette Strategy:** * **Annual Members:** Assigned a deep, stable **Navy Blue**. This conveys reliability, routine, and corporate commuting.
  * **Casual Riders:** Assigned a vibrant **Coral/Orange**. This conveys energy, recreation, and leisure.
  * *Accessibility:* This dual-color palette is colorblind-friendly and was strictly locked in across all 5 Tableau dashboards to prevent cognitive load (the audience never has to re-learn the legend).
* **Typography & Labeling:**
  * Clean, sans-serif fonts were used for high readability on screens.
  * Data labels were applied directly to marks (e.g., bar ends, pie slices) to eliminate the need for stakeholders to scan back and forth to an axis.

### 3. Chart-Specific Rationale

**A. Overall Ridership (Pie Chart)**
* **Why a Pie Chart:** While pie charts are often discouraged for complex comparisons, they are the optimal choice for a simple binary "part-to-whole" relationship (64.2% vs 35.8%). It immediately establishes the baseline that Members are the majority.
* **Technical Note:** The wide-format CSV (`overall_stats.csv`) was pivoted inside Tableau (converting `member_rides` and `casual_rides` into a single `Rider Type` dimension) to allow Tableau to properly render the angle and color slices.

**B. Ride Duration Patterns (Bar Chart)**
* **Why Multiple Metrics (Mean, Median, Mode):** Averages (Mean) can be skewed by extreme outliers. By plotting the Mean, Median, and Mode side-by-side, the visual proves mathematically that the "Casuals ride longer" insight is a fundamental behavioral truth, not just a data anomaly.

**C. Day of the Week Patterns (Line/Area Chart)**
* **Why Chronological Sorting:** Tableau defaults to alphabetical sorting. Manual chronological sorting (Sunday -> Saturday) was enforced to reveal the contrasting shapes of the data: the "weekday hump" for members and the "weekend mountain" for casuals.

**D. Seasonal Trends (Line Chart)**
* **Why Line Charts:** Line charts are the standard best practice for showing time-series data. 
* **Annotation Strategy:** Text annotations were added explicitly to highlight the "Winter Low (~17%)" and the "Summer Peak (43.3%)" to draw the eye directly to the marketing conversion window.

**E. Geographic Preferences (Horizontal Bar Chart)**
* **Why Horizontal Bars:** Station names are long text strings. Horizontal bars allow the text to be read naturally from left to right without tilting the font or cutting off the names.
* **Spatial Insight:** Side-by-side comparison clearly reveals spatial segregation (Inland/Business vs. Coastal/Tourism).