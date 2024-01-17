
-- Add day, month, and year columns for orderdate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.orders
ADD COLUMN orderdate_day INT,
           orderdate_month INT,
           orderdate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.orders
SET orderdate_day = EXTRACT(day FROM orderdate),
    orderdate_month = EXTRACT(month FROM orderdate),
    orderdate_year = EXTRACT(year FROM orderdate);

-- Add day, month, and year columns for requiredate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.orders
ADD COLUMN requireddate_day INT,
           requireddate_month INT,
           requireddate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.orders
SET requireddate_day = EXTRACT(day FROM requireddate),
    requireddate_month = EXTRACT(month FROM requireddate),
    requireddate_year = EXTRACT(year FROM requireddate);

-- Add day, month, and year columns for shipdate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.orders
ADD COLUMN shippeddate_day INT,
           shippeddate_month INT,
           shippeddate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.orders
SET shippeddate_day = EXTRACT(day FROM shippeddate),
    shippeddate_month = EXTRACT(month FROM shippeddate),
    shippeddate_year = EXTRACT(year FROM shippeddate);
```

These corrected queries add separate columns for day, month, and year for `orderdate`, `requiredate`, and `shippeddate` in the `orders_fresh` table. The `UPDATE` statements then populate these columns based on the existing date values.

Make sure to adjust the table and schema names if needed based on your actual database schema.