-- 02_data_cleaning.sql
-- Cleans imported data and creates usable join fields

UPDATE census_education
SET college_plus_pct_num = college_plus_pct::NUMERIC / 100;

UPDATE bls_employment
SET fips =
    LPAD(state_fips_code::TEXT, 2, '0') ||
    LPAD(county_fips_code::TEXT, 3, '0');
