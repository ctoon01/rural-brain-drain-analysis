-- 04_exploratory_analysis.sql
-- Exploratory analysis queries

-- Average degree attainment and unemployment by county type
SELECT
    county_tier,
    COUNT(*) AS county_count,
    ROUND(AVG(college_plus_pct) * 100, 2) AS avg_degree_pct,
    ROUND(AVG(unemployment_rate), 2) AS avg_unemployment
FROM v_county_master
GROUP BY county_tier
ORDER BY county_tier;

-- Least educated rural counties
SELECT
    county_name,
    state,
    ROUND(college_plus_pct * 100,1) AS degree_pct,
    unemployment_rate
FROM v_county_master
WHERE county_tier = 'Rural'
ORDER BY college_plus_pct ASC
LIMIT 20;

-- Most educated rural counties
SELECT
    county_name,
    state,
    ROUND(college_plus_pct * 100,1) AS degree_pct,
    unemployment_rate
FROM v_county_master
WHERE county_tier = 'Rural'
ORDER BY college_plus_pct DESC
LIMIT 20;

-- Education group vs unemployment
-- Exclude territories and special administrative areas
-- to maintain comparability with U.S. county-level observations

SELECT
    CASE
        WHEN college_plus_pct < 0.20 THEN 'Under 20%'
        WHEN college_plus_pct < 0.30 THEN '20-30%'
        WHEN college_plus_pct < 0.40 THEN '30-40%'
        ELSE '40%+'
    END AS education_group,
    ROUND(AVG(unemployment_rate),2) AS avg_unemployment,
    COUNT(*) AS counties
FROM v_county_master
WHERE state NOT IN ('AS','GU','MP','PR','VI')
GROUP BY education_group
ORDER BY education_group;
