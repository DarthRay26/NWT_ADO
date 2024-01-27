-- Remove duplicates from raw_employee
DELETE FROM raw_employee
WHERE (employeeid, ROW_CREATED) IN (
    SELECT employeeid, MIN(ROW_CREATED) AS min_row_created
    FROM raw_employee
    GROUP BY employeeid
    HAVING COUNT(*) > 1
);

-- Remove duplicates from raw_employee_territories
DELETE FROM raw_employee_territories
WHERE (employeeid, territoryid, ROW_CREATED) IN (
    SELECT employeeid, territoryid, MIN(ROW_CREATED) AS min_row_created
    FROM raw_employee_territories
    GROUP BY employeeid, territoryid
    HAVING COUNT(*) > 1
);

-- Remove duplicates from raw_order
DELETE FROM raw_order
WHERE (orderid, ROW_CREATED) IN (
    SELECT orderid, MIN(ROW_CREATED) AS min_row_created
    FROM raw_order
    GROUP BY orderid
    HAVING COUNT(*) > 1
);
