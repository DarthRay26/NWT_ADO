-- Add day, month, and year columns for hiredate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_employees
ADD COLUMN hiredate_day INT,
           hiredate_month INT,
           hiredate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_employees
SET hiredate_day = EXTRACT(day FROM hiredate),
    hiredate_month = EXTRACT(month FROM hiredate),
    hiredate_year = EXTRACT(year FROM hiredate);

-- Create a temporary table with updated birthdate columns
CREATE TEMPORARY TABLE updated_raw_employees AS
SELECT
  *,
  EXTRACT(day FROM birthdate) AS birthdate_day,
  EXTRACT(month FROM birthdate) AS birthdate_month,
  EXTRACT(year FROM birthdate) AS birthdate_year
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_employees;

-- Select from the temporary table
SELECT *
FROM updated_raw_employees;
