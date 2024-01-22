-- raw_employees_update.sql

WITH updated_raw_employees AS (
  SELECT
    *,
    EXTRACT(year FROM CURRENT_DATE()) - EXTRACT(year FROM birthdate) - 
    CASE 
        WHEN EXTRACT(month FROM CURRENT_DATE()) < EXTRACT(month FROM birthdate) OR 
             (EXTRACT(month FROM CURRENT_DATE()) = EXTRACT(month FROM birthdate) AND EXTRACT(day FROM CURRENT_DATE()) < EXTRACT(day FROM birthdate)) 
        THEN 1
        ELSE 0
    END AS age
  FROM {{ ref('raw_employees') }}
)

SELECT *
FROM updated_raw_employees
