# Data Cleaning Log
## Cyclistic Bike-Share Case Study - Process Phase

---

## Executive Summary

This document provides a comprehensive record of all data cleaning and transformation steps performed on the Cyclistic bike-share dataset. The cleaning process ensures data integrity, removes errors, handles missing values, and creates new calculated fields necessary for analysis. All decisions are documented for reproducibility and auditability.

**Data Period:** November 2024 - October 2025 (12 months)  

---

## Cleaning Objectives

1. **Ensure Data Integrity** - Remove records with errors or inconsistencies
2. **Handle Missing Values** - Address null/blank fields appropriately
3. **Standardize Formats** - Ensure consistent data types and formatting
4. **Create Calculated Fields** - Develop new fields for analysis
5. **Validate Data Quality** - Verify cleaned data meets analysis requirements
6. **Document Process** - Record all steps for reproducibility

---

## Data Quality Issues Identified & Resolved

### Issue #1: Missing Station Names and Station Ids

**Problem:**  
- Some rides have NULL or empty values in `end_station_name` and/or `start_station_name`
- Sme rides have NULL or empty values in `start_station_id` and/or `end_station_id `
- These represent dockless bike returns (bikes returned outside docking stations)


**Resolution Approach:**
- **Decision:** Removing these blank or null values
- **Reasoning:** Blank values create inconsistencies throughout the data
- **Action:** removing the records which contains end_station_name,start_station_name,start_station_id and end_station_id

**Methodology (Excel):**
```
Using filter option of the excel filtered the blank and null values and then deleted the rows which contain  null or blank values
```

**Impact:**
- Making consistency throughout the data
- cleaned the data for further analysis

---

### Issue #2: Extra spaces in some records

**Problem:**
- some records have extra and long spaces

**Resolution:**
- **Decision:** Removed the extra spaces
- **Action:** used addon feature to removed trim spaces

**Impact:**
- cleaned dataset for further analysis

**Methodology (Excel):**
```
Used excel add-ins feature to add trimspace addins and remove the extra spaces between the records
```
---

### Issue #3: Duplicates found in some records

**Problem:**
- Some records have duplicate values

**Discovery Process:**
- used excel's remove duplicates feature in data tab

**Resolution Decision:**
- **Decision:** Removed all duplicates from the data

**Impact:**
- Enables analysis of extreme usage patterns
- created consistency throughout the data for further analysis

---


### Issue #4: Inconsistent Data Types

**Problem:**
- ride_id field: Mix of text and numeric formats
- station_id field: Inconsistent (some numeric, some alpha-numeric like "TA1309000025")
- ride_length : incorrect time format

**Discovery:**
- Excel imports interpreted some fields as numbers
- Lost leading zeros in some station IDs
- incorrect time format

**Resolution:**
- **ride_id:** Converted ALL to TEXT format
  - Preserves unique identifier exactly
  - Enables reliable matching
  
- **station_id:** Converted ALL to TEXT format
  - Maintains alpha-numeric IDs correctly
  - Restores lost leading characters

- **ride_length** Converted ALL to correct HH:MM:SS format
   - Maintains correct time format  

**Impact:**
- Ensures proper field identification
- Enables accurate grouping/filtering


### Issue #5: Inconsistent Latitude and Longitude fields

**Problem:**
- inconsistent longitude and latitude decimal numbers


**Resolution:**
- using decrease decimal feature of the excel to maintain 4 digits after the decimal value


### Issue #6: Outlier and Invalid Ride Lengths

**Problem:**
- Some rides had negative durations (system errors or maintenance)
- Some rides lasted less than 1 minute (false starts/test rides)
- Some rides lasted longer than 24 hours (unreturned/stolen bikes)

**Resolution Decision:**
- **Decision:** Filtered out extreme outliers to prevent skewed averages.
- **Action:** Removed records where `ride_length` was < 1 minute or > 24 hours.

**Impact:**
- Ensures average duration metrics are statistically valid and reflect actual customer usage.


## Calculated Fields Created

### Field #1: ride_length (Duration)

**Purpose:** Measure how long each trip lasted

**Formula (Excel):**
```
=ended_at - started_at
```

**Format:** Time (HH:MM:SS)

**Calculation Example:**
- Started: 2024-12-31 01:38:35
- Ended: 2024-12-31 01:48:45
- ride_length: 00:10:10

---

### Field #2: day_of_week

**Purpose:** Identify patterns by day of week

**Formula (Excel):**
```
=WEEKDAY(started_at, 1)
```

**Format:** Number (1-7)

**Mapping:**
- 1 = Sunday
- 2 = Monday
- 3 = Tuesday
- 4 = Wednesday
- 5 = Thursday
- 6 = Friday
- 7 = Saturday

**Calculation Example:**
- started_at: 2024-12-31 (Tuesday)
- day_of_week: 3

### Field #3: Month

**Purpose:** Indentify patterns by the month

**Formula(Excel):**
```
=MONTH(serial_number)
```
**Mapping:**
- 11 = November
- 12 = December
-  1 = January
-  2 = February
-  3 = March
-  4 = April
-  5 = May
-  6 = June
-  7 = July
-  8 = August
-  9 = September
- 10 = October

**Calculation Example:**
- started_at: 2024-12-31 (Tuesday)
- month: 12


## Data Validation Checks

### Check #1: Uniqueness Verification

**Objective:** Ensure ride_id field is unique

**Method:**
```
=COUNTIF($A$2:$A$952744,A2)
```

**Results:**
- ✓ All ride_id values unique
- ✓ No duplicate records

---

### Check #2: Member/Casual Classification

**Objective:** Verify only valid categories

**Validation:**
- ✓ Only "member" and "casual" values present
- ✓ No null values
- ✓ No misspellings or case variations
- ✓ Consistent across all 12 months



## Cleaning Tools & Techniques Used

### Primary Tool: Microsoft Excel
- WEEKDAY() - Day of week calculation
- COUNTIF() - Duplicate detection
- IF/OR() - Data validation
- ISBLANK() - Missing value detection

### Data Validation Methods
- Conditional formatting for error highlighting
- Filtering for quality verification
- Sorting for outlier detection

---

## Documentation for Reproducibility

### Step-by-Step Process

1. **Load original data → Open each of the 12 monthly CSV files individually in Excel (to bypass the 1-million row limit)
2. **Convert data types** → Standardize all fields to appropriate formats
3. **Create ride_length** → Calculate duration for all records
4. **Create day_of_week** → Extract day of week from timestamp
5. **Create month** → Extract month from timestamp
6. **Create hour** → Extract hour from timestamp
7. **Identify errors** → Flag problematic records
8. **Validate data** → Run all quality checks
9. **Document decisions** → Record all changes made
10.**Export cleaned dataset** → Save to new file
11.**Merge Datasets → Use R script (01_load_and_merge.R) to combine all 12 cleaned CSVs into one master dataframe for analysis


### File Naming Convention
- Original: `202411-divvy-tripdata.csv` (unchanged)
- Converted: `202411-divvy-tripdata.xlsx` (Excel version)

---

## Quality Assurance Sign-Off

**Data Cleaning Status:** ✓ COMPLETE

**Quality Metrics Met:**
- ✓ Error rate < 2%
- ✓ All calculated fields complete
- ✓ Data types standardized
- ✓ Validation checks passed
- ✓ Process documented
- ✓ Ready for analysis

**Recommendations:**
- Proceed to Analyze Phase
- Reference this log for methodology
- Acknowledge data quality in final findings

---

**Cleaning Completed:** 09th november, 2025 
**Analyst:** Danish Khan 
**Status:** READY FOR ANALYSIS ✓

---