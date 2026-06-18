# Rural Brain Drain Analysis

## Overview

This project investigates educational attainment and labor market outcomes across more than 3,000 U.S. counties to better understand factors associated with rural population decline and economic opportunity.

Using USDA Rural-Urban Continuum Codes, U.S. Census American Community Survey (ACS) data, and Bureau of Labor Statistics (BLS) employment data, I built a PostgreSQL database that combines county-level demographic, educational, and employment information through FIPS-code joins.

## Research Question

Why do some rural counties struggle to retain highly educated residents, and how do educational attainment and labor market conditions differ between rural and metropolitan America?

## Tools & Technologies

* PostgreSQL
* SQL
* Python (Pandas)
* Tableau Public
* Excel
* GitHub
* DBeaver

## Data Sources

* USDA Rural-Urban Continuum Codes (RUCC)
* U.S. Census Bureau American Community Survey (ACS)
* Bureau of Labor Statistics Local Area Unemployment Statistics (LAUS)

## Data Engineering Process

* Imported and cleaned county-level Census, USDA, and BLS datasets
* Standardized county FIPS codes across all data sources
* Created relational database tables in PostgreSQL
* Built SQL joins linking education, employment, and rurality data
* Created reusable SQL views for analysis
* Converted text-based percentage fields into numeric values for statistical analysis

## Current Findings

Analysis of 3,240 U.S. counties found:

| County Type  | Avg. College Degree Rate | Avg. Unemployment Rate |
| ------------ | ------------------------ | ---------------------- |
| Metro        | 34.72%                   | 3.66%                  |
| Micropolitan | 27.17%                   | 3.79%                  |
| Rural        | 27.77%                   | 3.65%                  |

### Key Insight

Metropolitan counties exhibit substantially higher educational attainment than rural and micropolitan counties, with degree attainment rates approximately 25% higher on average.

## Planned Analysis

* Educational attainment by county type
* Employment and unemployment comparisons
* Identification of counties with the highest and lowest degree attainment
* Geographic analysis using Tableau maps
* Development of a composite Brain Drain Score
* Interactive public Tableau dashboard

## Project Status

✅ Data acquisition completed

✅ Data cleaning completed

✅ PostgreSQL database built

✅ Multi-table SQL joins completed

✅ Initial exploratory analysis completed

🚧 Tableau dashboard in development

🚧 Advanced statistical analysis in progress

## Skills Demonstrated

* Data Cleaning
* SQL Joins
* Relational Database Design
* Data Transformation
* Exploratory Data Analysis (EDA)
* Data Visualization
* Public Data Integration
* Statistical Reporting
