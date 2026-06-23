Rural Brain Drain Analysis
Overview

This project investigates educational attainment and labor market outcomes across more than 3,000 U.S. counties to better understand factors associated with rural economic opportunity and population decline.

Using USDA Rural-Urban Continuum Codes (RUCC), U.S. Census American Community Survey (ACS) data, and Bureau of Labor Statistics (BLS) employment data, I built a PostgreSQL database that combines county-level demographic, educational, and employment information through FIPS-code joins.

The project explores how educational attainment varies between metropolitan, micropolitan, and rural counties and examines the relationship between education and unemployment.

Research Question

How do educational attainment and labor market outcomes differ across rural and metropolitan counties, and what do these differences reveal about economic opportunity in rural America?

Interactive Dashboard

Tableau Public Dashboard:
https://public.tableau.com/shared/XCZW2TSQD

Tools & Technologies
PostgreSQL
SQL
DBeaver
Tableau Public
Excel
GitHub
Python (planned for future analysis)
Data Sources
USDA Rural-Urban Continuum Codes (RUCC)
U.S. Census Bureau American Community Survey (ACS)
Bureau of Labor Statistics Local Area Unemployment Statistics (LAUS)
Data Engineering Process
Imported and cleaned county-level Census, USDA, and BLS datasets
Standardized county FIPS codes across all data sources
Filtered non-county territories where appropriate for county-level comparisons
Created relational database tables in PostgreSQL
Built SQL joins linking education, employment, and rurality data
Created reusable SQL views for analysis
Converted text-based percentage and employment fields into numeric values for statistical analysis
Exported analytical datasets for Tableau visualization
Key Findings
Educational Attainment by County Type
County Type	Avg. Bachelor's Degree Rate
Metro	34.9%
Rural	27.8%
Micropolitan	27.2%

Metropolitan counties exhibit substantially higher educational attainment than rural and micropolitan counties.

Educational Attainment and Unemployment
Bachelor's Degree Attainment	Avg. Unemployment Rate
Under 20%	3.96%
20–30%	3.43%
30–40%	2.84%
40%+	2.61%

Counties with lower educational attainment consistently experience higher unemployment rates.

Relationship Between Education and Employment

Analysis across 3,240 counties shows a clear negative relationship between educational attainment and unemployment. Counties with higher rates of bachelor's degree attainment generally experience lower unemployment, regardless of county type.

Dashboard Visualizations
Educational Attainment by County Type
Educational Attainment vs. Unemployment Rate
Unemployment by Education Level
Interactive county-level exploration through Tableau Public
Skills Demonstrated
Data Cleaning
SQL Joins
Relational Database Design
Data Transformation
Exploratory Data Analysis (EDA)
Data Visualization
Public Data Integration
Tableau Dashboard Development
Future Improvements
Develop a composite Brain Drain Score
Incorporate county-level population change data
Add migration estimates from the Census Bureau
Expand analysis using Python and Pandas
Build predictive models examining factors associated with county-level population decline

Project Status:

✅ Data acquisition completed
✅ Data cleaning completed
✅ PostgreSQL database built
✅ Multi-table SQL joins completed
✅ Tableau dashboard published
✅ Exploratory analysis completed
