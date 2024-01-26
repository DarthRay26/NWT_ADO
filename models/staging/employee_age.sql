-- Add age column to raw_employees
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_employees
ADD COLUMN age INT;

-- Update the newly added age column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_employees
SET age = 1998 - EXTRACT(year FROM birthdate) - 
          CASE 
              WHEN EXTRACT(month FROM CURRENT_DATE()) < EXTRACT(month FROM birthdate) OR 
                   (EXTRACT(month FROM CURRENT_DATE()) = EXTRACT(month FROM birthdate) AND EXTRACT(day FROM CURRENT_DATE()) < EXTRACT(day FROM birthdate)) 
              THEN 1
              ELSE 0
          END;

-- Verify the changes
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_employees;
