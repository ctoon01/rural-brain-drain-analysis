-- 03_create_master_view.sql
-- Creates master joined county-level analysis view

DROP VIEW IF EXISTS v_county_master;

CREATE VIEW v_county_master AS
SELECT
    u.fips,
    u.state,
    u.county_name,
    u.population_2010,
    u.rucc_2013,
    CASE
        WHEN u.rucc_2013 BETWEEN 1 AND 3 THEN 'Metro'
        WHEN u.rucc_2013 BETWEEN 4 AND 6 THEN 'Micropolitan'
        ELSE 'Rural'
    END AS county_tier,
    c.total_25_plus,
    c.college_plus,
    c.college_plus_pct_num AS college_plus_pct,
    b.year,
    b.labor_force::INTEGER AS labor_force,
    b.employed::INTEGER AS employed,
    b.unemployed::INTEGER AS unemployed,
    b.unemployment_rate::NUMERIC AS unemployment_rate
FROM usda_rucc u
LEFT JOIN census_education c
    ON u.fips = c.fips
LEFT JOIN bls_employment b
    ON u.fips = b.fips;
