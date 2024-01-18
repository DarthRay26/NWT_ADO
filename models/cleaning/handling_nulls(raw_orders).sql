-- -- Show rows where specified columns are null in raw_orders
-- SELECT *
-- FROM NORTHWIND_DATA.NWT_SCHEMA.raw_orders
-- WHERE CUSTOMERID like 'NULL'
--    OR EMPLOYEEID like 'NULL'
--    OR FREIGHT like 'NULL'
--    OR ORDERDATE like 'NULL'
--    OR ORDERID like 'NULL'
--    OR REQUIREDDATE like 'NULL'
--    OR SHIPADDRESS like 'NULL'

-- -- Calculate the percentage of rows where these columns are null
-- SELECT 
--   COUNT(*) AS total_rows,
--   COUNT(*) * 100.0 / (SELECT COUNT(*) FROM NORTHWIND_DATA.NWT_SCHEMA.raw_orders) AS percentage
-- FROM NORTHWIND_DATA.NWT_SCHEMA.raw_orders
-- WHERE CUSTOMERID IS NULL
--    OR EMPLOYEEID IS NULL
--    OR FREIGHT IS NULL
--    OR ORDERDATE IS NULL
--    OR ORDERID IS NULL
--    OR REQUIREDDATE IS NULL
--    OR SHIPADDRESS IS NULL;



-- Drop rows where specified columns are null in raw_orders
DELETE FROM NORTHWIND_DATA.NWT_SCHEMA.raw_orders
WHERE CUSTOMERID IS NULL
   OR EMPLOYEEID IS NULL
   OR ORDERID IS NULL
   ;

