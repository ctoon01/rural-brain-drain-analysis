# Rural Brain Drain Analysis

## Project Origins

This project originated from a sociology research paper I wrote in 2019 titled *Rural America Running: The Outmigration of Rural Youth*. In that paper, I explored how educational attainment, employment opportunities, and urbanization influence migration patterns among rural populations.

Several years later, after learning SQL, PostgreSQL, and Tableau, I revisited the same topic from a data analytics perspective. Rather than relying solely on academic literature, I built a county-level database using USDA, ACS, and BLS data to examine measurable differences in educational attainment and labor market outcomes across the United States.

This project represents the evolution of a social science research question into a data analytics workflow, combining my academic background in Sociology with quantitative analysis and data visualization techniques.


**Tools Used:** PostgreSQL, SQL, DBeaver, Tableau Public, Excel, GitHub

---

## Research Question

How do educational attainment and labor market outcomes differ across metropolitan, micropolitan, and rural counties, and what can these differences tell us about economic opportunity in rural America?

---

## Interactive Dashboard

**View the Tableau Dashboard:**

https://public.tableau.com/views/Rural_Brain_Drain_Analysis/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

---

## Data Sources

This project combines three public datasets:

### USDA Rural-Urban Continuum Codes (RUCC)

Used to classify counties as metropolitan, micropolitan, or rural.

### American Community Survey (ACS)

Provided county-level educational attainment data.

### Bureau of Labor Statistics (LAUS)

Provided county-level employment and unemployment statistics.

---

## Data Engineering Workflow

### Database Construction

* Imported county-level USDA, ACS, and BLS datasets into PostgreSQL
* Standardized county FIPS codes across all sources
* Built relational database tables
* Created reusable SQL views for analysis

### Data Cleaning

* Converted text-based percentage and employment fields to numeric values
* Resolved formatting inconsistencies across datasets
* Filtered non-county territories where appropriate for county-level comparisons
* Validated joins using county and FIPS-code matching

### Analysis Preparation

* Created a county master view combining all datasets
* Generated Tableau-ready exports
* Developed summary statistics and exploratory queries

---

## Key Findings

### Educational Attainment by County Type

| County Type  | Average Bachelor's Degree Rate |
| ------------ | -----------------------------: |
| Metro        |                          34.9% |
| Rural        |                          27.8% |
| Micropolitan |                          27.2% |

Metropolitan counties exhibit substantially higher educational attainment than rural and micropolitan counties.

---

### Educational Attainment and Unemployment

| Bachelor's Degree Attainment | Average Unemployment Rate |
| ---------------------------- | ------------------------: |
| Under 20%                    |                     3.96% |
| 20–30%                       |                     3.43% |
| 30–40%                       |                     2.84% |
| 40%+                         |                     2.61% |

Counties with lower educational attainment consistently experience higher unemployment rates.

---

### Overall Relationship

Analysis across 3,240 U.S. counties revealed a clear negative relationship between educational attainment and unemployment.

Counties with higher rates of bachelor's degree attainment generally experience lower unemployment regardless of county type.

---

## Dashboard Visualizations

The Tableau dashboard includes:

* Educational Attainment by County Type
* Educational Attainment vs. Unemployment Rate
* Unemployment by Education Level
* Interactive county-level exploration

---

## Skills Demonstrated

### Data Engineering

* Relational Database Design
* Data Cleaning
* Data Transformation
* Public Data Integration

### SQL

* Multi-table Joins
* Data Validation
* Analytical Views
* Aggregations and Grouping

### Analytics

* Exploratory Data Analysis (EDA)
* Statistical Summarization
* Data Visualization
* Dashboard Development

---

## Repository Structure

```text
rural-brain-drain-analysis/

README.md

sql/
├── 01_create_tables.sql
├── 02_data_cleaning.sql
├── 03_create_master_view.sql
├── 04_exploratory_analysis.sql
├── 05_tableau_exports.sql

visuals/
├── dashboard_preview.png

findings/
├── findings.md
```

---

## Project Status

✅ Data acquisition completed

✅ Data cleaning completed

✅ PostgreSQL database constructed

✅ Multi-table SQL joins completed

✅ Exploratory analysis completed

✅ Tableau dashboard published

✅ Portfolio project completed

---

## Future Improvements

Potential future enhancements include:

* Incorporating county-level population change data
* Adding migration estimates from the Census Bureau
* Developing a composite Brain Drain Score
* Performing additional analysis in Python using Pandas
* Building predictive models related to population retention and economic outcomes
