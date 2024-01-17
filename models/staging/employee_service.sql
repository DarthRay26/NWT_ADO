-- Add a new column for length of service
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_employees
ADD COLUMN length_of_service INT;

-- Update the newly added column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_employees
SET length_of_service = EXTRACT(year FROM CURRENT_DATE) - EXTRACT(year FROM hiredate) -
    CASE 
        WHEN EXTRACT(month FROM CURRENT_DATE) < EXTRACT(month FROM hiredate) OR 
             (EXTRACT(month FROM CURRENT_DATE) = EXTRACT(month FROM hiredate) AND EXTRACT(day FROM CURRENT_DATE) < EXTRACT(day FROM hiredate)) 
        THEN 1
        ELSE 0
    END;