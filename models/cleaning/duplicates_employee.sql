-- employee_territories_duplicates.sql

-- Identify duplicate entries in EMPLOYEE_TERRITORIES
WITH duplicate_entries AS (
  SELECT EMPLOYEEID, TERRITORYID, COUNT(*) AS duplicate_count
  FROM {{ ref('employee_territories') }}
  GROUP BY EMPLOYEEID, TERRITORYID
  HAVING COUNT(*) > 1
)

SELECT * FROM duplicate_entries;

-- Find rows with duplicate EMPLOYEEID in EMPLOYEE_TERRITORIES
WITH duplicate_employeeid AS (
  SELECT EMPLOYEEID, COUNT(*) AS duplicate_count
  FROM {{ ref('employee_territories') }}
  GROUP BY EMPLOYEEID
  HAVING COUNT(*) > 1
)

SELECT * FROM duplicate_employeeid;

-- Remove duplicate entries in EMPLOYEE_TERRITORIES
WITH duplicates_to_delete AS (
  SELECT EMPLOYEEID, TERRITORYID
  FROM {{ ref('raw_employee_territories') }}
  GROUP BY EMPLOYEEID, TERRITORYID
  HAVING COUNT(*) > 1
)

DELETE FROM {{ ref('raw_employee_territories') }}
WHERE (EMPLOYEEID, TERRITORYID) IN (
  SELECT EMPLOYEEID, TERRITORYID
  FROM duplicates_to_delete
)