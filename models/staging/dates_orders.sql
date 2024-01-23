-- Add day, month, and year columns for orderdate, requireddate, and shippeddate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_orders
ADD COLUMN orderdate_day INT,
           orderdate_month INT,
           orderdate_year INT,
           requireddate_day INT,
           requireddate_month INT,
           requireddate_year INT,
           shippeddate_day INT,
           shippeddate_month INT,
           shippeddate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_orders
SET orderdate_day = EXTRACT(day FROM orderdate),
    orderdate_month = EXTRACT(month FROM orderdate),
    orderdate_year = EXTRACT(year FROM orderdate),
    requireddate_day = EXTRACT(day FROM requireddate),
    requireddate_month = EXTRACT(month FROM requireddate),
    requireddate_year = EXTRACT(year FROM requireddate),
    shippeddate_day = EXTRACT(day FROM shippeddate),
    shippeddate_month = EXTRACT(month FROM shippeddate),
    shippeddate_year = EXTRACT(year FROM shippeddate);

-- Verify the changes
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_orders;

