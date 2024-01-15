-- Add day, month, and year columns for hiredate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.employees
ADD COLUMN hiredate_day INT,
           hiredate_month INT,
           hiredate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.employees
SET hiredate_day = EXTRACT(day FROM hiredate),
    hiredate_month = EXTRACT(month FROM hiredate),
    hiredate_year = EXTRACT(year FROM hiredate);

-- Add day, month, and year columns for birthdate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.employees
ADD COLUMN birthdate_day INT,
           birthdate_month INT,
           birthdate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.employees
SET birthdate_day = EXTRACT(day FROM birthdate),
    birthdate_month = EXTRACT(month FROM birthdate),
    birthdate_year = EXTRACT(year FROM birthdate);