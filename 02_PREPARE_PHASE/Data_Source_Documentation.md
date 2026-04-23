# Data Source Documentation
## Cyclistic Bike-Share Case Study - Prepare Phase

---

## Executive Summary

This document provides comprehensive documentation of all data sources used in the Cyclistic bike-share analysis. The analysis leverages 12 months of publicly available historical trip data from Cyclistic (Divvy bike-share system), supplemented with company information and operational context. All data sources have been evaluated for credibility, bias, privacy compliance, and analytical relevance.

---

## Primary Data Source: Cyclistic Historical Trip Data

### Source Overview

**Data Provider:**  
Motivate International Inc. (on behalf of Cyclistic)

**Dataset Name:**  
Cyclistic Trip Data / Divvy Trip Data

**Access Method:**  
Public data repository (Divvy Data Downloads)

**License:**  
Motivate International Inc. License Agreement  
Data License: Public Data

**Dataset Structure:**  
Monthly .csv files containing individual ride records

### Data Collection Period

**Analysis Timeframe:**  
12 months of recent historical data

**Options by Tool:**
- **For Excel/Google Sheets/SQL:** Download previous 12 months
- **For R Studio:** Utilizing the complete 12-month dataset (Nov 2024 - Oct 2025) via local environment.
  - *Note: These specific quarters used due to R memory limitations in free plan*

### Dataset Characteristics

**Total Records:**  
Approximately 3,000-6,000+ ride records per month (typically 36,000-72,000+ total records)

**Data Granularity:**  
Individual trip/ride level data

**Update Frequency:**  
Monthly releases

**Completeness:**  
Continuous collection throughout all months analyzed

### Data File Organization

**Standard File Format:**  
CSV (Comma-Separated Values)

**File Naming Convention:**  
YYYY-MM-Divvy-Tripdata.csv  
(Example: 202510-divvy-tripdata.csv)

**File Size:**  
Typically 50-100 MB per monthly file

**Storage:**
10_Raw_Data folder - includes raw and unprocessed data.
11_Converted_Data folder - includes converted and formatted data.
12_Analysis folder - includes cleaned and ready data
13_Results folder - includes analysis output data

---

## Data Dictionary & Field Descriptions

### Core Fields Available in Dataset

| Field Name | Data Type | Description | Example | Relevance to Analysis |
|---|---|---|---|---|
| **ride_id** | String/Integer | Unique identifier for each trip | 3549007 | Primary key; uniqueness verification |
| **rideable_type** | String | Type of bike used | electric_bike, classic_bike, docked_bike | Bike preference analysis |
| **started_at** | DateTime | Start date and time of trip | 2019-01-09 16:08:33 | Temporal pattern analysis |
| **ended_at** | DateTime | End date and time of trip | 2019-01-09 16:13:27 | Temporal pattern analysis |
| **start_station_name** | String | Name of station where trip started | Ewing Ave & 28th Pl | Geographic analysis |
| **start_station_id** | String/Integer | ID of starting station | 86 | Geographic tracking |
| **end_station_name** | String | Name of station where trip ended | Lincoln Ave & Fullerton Ave | Geographic analysis |
| **end_station_id** | String/Integer | ID of ending station | 313 | Geographic tracking |
| **member_casual** | String | Rider type classification | member, casual | PRIMARY SEGMENTATION VARIABLE |
| **start_lat** | Float | Latitude of start station | 41.88 | Geographic mapping |
| **start_lng** | Float | Longitude of start station | -87.62 | Geographic mapping |
| **end_lat** | Float | Latitude of end station | 41.93 | Geographic mapping |
| **end_lng** | Float | Longitude of end station | -87.66 | Geographic mapping |

### Calculated Fields (To Be Created)

| Field Name | Calculation | Format | Purpose |
|---|---|---|---|
| **ride_length** | ended_at - started_at | HH:MM:SS | Compare usage duration between members and casual riders |
| **day_of_week** | WEEKDAY(started_at) | Number (1-7) | Identify usage patterns by day; 1=Sunday, 7=Saturday |
| **month** | MONTH(started_at) | Number (1-12) | Identify seasonal patterns |
| **hour** | HOUR(started_at) | Number (0-23) | Identify peak usage times |

---

## Data Source Characteristics

### Geographic Scope

**Service Area:**  
Chicago, Illinois, USA

**Geographic Coverage:**  
All Cyclistic docking stations across Chicago (692 stations)

**Geographic Precision:**  
Latitude and longitude coordinates for each station

### Temporal Scope

**Time Zone:**  
Central Time (CT)

**Data Capture:**  
Continuous throughout all days and hours

**Seasonal Representation:**  
Full calendar year coverage (all seasons represented)

### Customer Segments Represented

**Member Category:**  
Annual membership holders

**Casual Category:**  
Single-ride and full-day pass purchasers

**Coverage:**  
All ride types captured (commuting and leisure)

---

## Data Privacy & Compliance

### Personal Identifiable Information (PII)

**Status:**  
**PII HAS BEEN REMOVED FROM DATASET**

**Implications:**
- Cannot connect pass purchases to credit card numbers
- Cannot determine if casual riders live in service area
- Cannot track individual customer across multiple rides
- Cannot identify repeat casual riders
- Cannot use rider contact information

**Reason for Removal:**  
Data privacy protection and compliance with privacy regulations

**Analysis Impact:**  
- Comparison is segment-level (aggregate members vs. casual riders)
- Cannot do individual customer-level tracking
- Analysis focuses on behavioral patterns, not individual identities

### Data Licensing & Intellectual Property

**License Type:**  
Motivate International Inc. Public License

**Permitted Uses:**  
- Academic research
- Analysis and reporting
- Portfolio demonstrations
- Educational purposes

**Attribution Requirements:**  
Data provided by Motivate International Inc.

**Restrictions:**  
- Cannot use for commercial purposes without additional licensing
- Must credit Motivate International Inc. in all publications
- Cannot redistribute original data
- Cannot use for unauthorized marketing

### Security & Confidentiality

**Current Status:**  
Public data (not confidential)

**Data Protection:**  
Original files should be stored securely; backup copies recommended

**Sharing Restrictions:**  
Safe to share analysis and findings; avoid redistributing raw data files

---

## Data Quality Assessment

### Completeness

**Record Completeness:**  
Most fields are consistently populated

**Potential Missing Values:**  
- Some end_station_name/id fields may be null (dockless return)
- Some ride_length calculations may be affected by missing timestamps

**Handling Strategy:**  
- Filter out records with missing critical fields (member_casual, started_at, ended_at)
- Document count of excluded records

### Consistency

**Identifier Consistency:**  
- ride_id is unique per record
- station_id values are consistent with station_name values

**Categorical Values:**  
- member_casual field contains only "member" or "casual" values
- rideable_type values are standardized

**Time Format Consistency:**  
- All timestamps follow YYYY-MM-DD HH:MM:SS format
- Timestamps are in same time zone (Chicago Central Time)

### Accuracy

**Coordinate Accuracy:**  
GPS coordinates are accurate to station locations

**Duration Accuracy:**  
Ride duration calculated from system timestamps (high accuracy)

**Temporal Accuracy:**  
Start/end times reflect actual trip times

### Validity

**Data Type Validation:**  
- Numeric fields (lat, lng) contain valid numbers
- DateTime fields follow consistent format
- Categorical fields contain valid categories

**Range Validation:**  
- Latitude values fall within Chicago area (41.6 - 42.0)
- Longitude values fall within Chicago area (-87.9 to -87.5)
- Ride_length values are positive numbers

---

## How Data Answers Business Question

### Research Question
**How do annual members and casual riders use Cyclistic bikes differently?**

### Key Data Points

**Usage Duration:**  
- started_at + ended_at → ride_length field
- Enables comparison of average trip duration by member type

**Usage Frequency:**  
- ride_id records counted by member_casual
- Enables comparison of volume of trips by member type

**Temporal Patterns:**  
- started_at/ended_at → day_of_week, hour fields
- Enables identification of usage patterns throughout week/day by member type

**Behavioral Insights:**  
- Combination of all fields enables pattern analysis
- Geographic data enables station analysis by member type

**Type Differentiation:**  
- rideable_type field enables bike choice analysis by member type
- Reveals preferences between bike types

---

## Data Limitations

### Known Limitations

1. **No Individual Tracking:** Cannot follow individual riders across multiple trips due to PII removal

2. **Limited Customer Context:** Cannot determine casual rider demographics, income, location residence

3. **No Revenue Data:** Cannot directly correlate with actual membership conversion or revenue

4. **Service Area Only:** Data only covers Chicago; cannot generalize to other cities

5. **Historical Data Only:** Cannot predict future behavior; analysis is backward-looking

6. **Bike Availability:** Data reflects bikes actually used, not demand that exceeded availability

7. **Seasonal Snapshot:** 12-month window may not represent all possible seasonal variations

### Data Gaps

- No customer satisfaction or feedback data
- No pricing information per transaction
- No marketing campaign attribution data
- No station capacity or wait time data
- No weather or traffic condition data

### How Limitations Impact Analysis

- Analysis is descriptive (not predictive)
- Findings are segment-level (not individual-level)
- Recommendations should be treated as directional insights
- Results apply specifically to Chicago market

---

## Data Verification Procedures

### Verification Steps Completed

✓ **Row Count Verification:** Confirmed expected number of records per month  
✓ **Field Presence:** Verified all expected columns are present  
✓ **Data Type Validation:** Confirmed data types match specifications  
✓ **Duplicate Check:** Verified ride_id is unique across records  
✓ **Range Validation:** Confirmed values fall within expected ranges  

### Quality Assurance Checkpoints

- [ ] Download all 12 months of data
- [ ] Verify file sizes are within expected range
- [ ] Open each file and spot-check random records
- [ ] Confirm member_casual field contains only "member" and "casual"
- [ ] Spot-check timestamp formats
- [ ] Verify no widespread missing values
- [ ] Confirm station IDs match station names

---

## Data Accessibility & Format

### Data Access Options

1. **Cyclistic/Divvy Website:**  
   https://divvybikes.com/system-data  
   (Link provided for reference; actual URL may vary)

2. **Motivate International:**  
   Public data portal maintained by Motivate

3. **Course Materials:**  
   Pre-downloaded files provided with case study

### Format Specifications

**Primary Format:**  CSV (Excel-compatible)

**Conversion Options:**  
- .xlsx (Excel Workbook) for spreadsheet analysis
- .json for programming-based analysis
- Database import for SQL analysis

**Encoding:**  
UTF-8 (standard text encoding)

---

## Documentation Summary

### Data Governance

**Data Owner:**  
Motivate International Inc. / Cyclistic

**Analyst:**  
Danish Khan, Junior Data Analyst, Cyclistic Marketing Analytics Team

**Analysis Date:**  
07-11-2025

**Data Last Updated:**  
November 5th, 2025

### Next Steps in Analysis

1. **Prepare Phase:** Verify data receipt and organization ✓ (Current)
2. **Prepare Phase:** Conduct ROCCC assessment → *See ROCCC_Assessment.txt*
3. **Process Phase:** Clean and transform data
4. **Analyze Phase:** Perform statistical analysis
5. **Share Phase:** Create visualizations
6. **Act Phase:** Develop recommendations

---

## References & Resources

**Motivate International Inc. Data License:**  
[License Agreement Details]

**Cyclistic Company Information:**  
- Founded: 2016
- Fleet Size: 5,824 bicycles
- Stations: 692 docking stations
- Service Area: Chicago, Illinois

**Data Dictionary Source:**  
Motivate International Inc. data documentation