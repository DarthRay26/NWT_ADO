ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.employees
ADD COLUMN age INT;

UPDATE NORTHWIND_DATA.NWT_SCHEMA.employees
SET age = EXTRACT(year FROM CURRENT_DATE) - EXTRACT(year FROM birthdate) - 
    CASE 
        WHEN EXTRACT(month FROM CURRENT_DATE) < EXTRACT(month FROM birthdate) OR 
             (EXTRACT(month FROM CURRENT_DATE) = EXTRACT(month FROM birthdate) AND EXTRACT(day FROM CURRENT_DATE) < EXTRACT(day FROM birthdate)) 
        THEN 1
        ELSE 0
    END;