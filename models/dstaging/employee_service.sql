-- raw_employees_update.sql

WITH updated_raw_employees AS (
  SELECT
    *,
    EXTRACT(year FROM CURRENT_DATE()) - EXTRACT(year FROM hiredate) - 
    CASE 
        WHEN EXTRACT(month FROM CURRENT_DATE()) < EXTRACT(month FROM hiredate) OR 
             (EXTRACT(month FROM CURRENT_DATE()) = EXTRACT(month FROM hiredate) AND EXTRACT(day FROM CURRENT_DATE()) < EXTRACT(day FROM hiredate)) 
        THEN 1
        ELSE 0
    END AS length_of_service
  FROM {{ ref('raw_employees') }}
)

SELECT *
FROM updated_raw_employees;
