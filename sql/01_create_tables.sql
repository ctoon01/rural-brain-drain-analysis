-- 01_create_tables.sql
-- Creates base tables for Rural Brain Drain Analysis

CREATE TABLE usda_rucc (
    fips TEXT,
    state TEXT,
    county_name TEXT,
    population_2010 INTEGER,
    rucc_2013 INTEGER,
    description TEXT
);

CREATE TABLE census_education (
    geo_id TEXT,
    county_name TEXT,
    total_25_plus INTEGER,
    associates INTEGER,
    bachelors INTEGER,
    masters INTEGER,
    professional_degree INTEGER,
    doctorate INTEGER,
    fips TEXT,
    college_plus INTEGER,
    college_plus_pct TEXT,
    college_plus_pct_num NUMERIC
);

CREATE TABLE bls_employment (
    year INTEGER,
    state_fips_code TEXT,
    county_fips_code TEXT,
    county_name_state_abbreviation TEXT,
    labor_force TEXT,
    employed TEXT,
    unemployed TEXT,
    unemployment_rate TEXT,
    laus_code TEXT,
    fips TEXT
);
