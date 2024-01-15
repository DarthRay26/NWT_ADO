
-- Add day, month, and year columns for orderdate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.orders_fresh
ADD COLUMN orderdate_day INT,
           orderdate_month INT,
           orderdate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.orders_fresh
SET orderdate_day = EXTRACT(day FROM orderdate),
    orderdate_month = EXTRACT(month FROM orderdate),
    orderdate_year = EXTRACT(year FROM orderdate);

-- Add day, month, and year columns for requiredate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.orders_fresh
ADD COLUMN requiredate_day INT,
           requiredate_month INT,
           requiredate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.orders_fresh
SET requiredate_day = EXTRACT(day FROM requiredate),
    requiredate_month = EXTRACT(month FROM requiredate),
    requiredate_year = EXTRACT(year FROM requiredate);

-- Add day, month, and year columns for shipdate
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.orders_fresh
ADD COLUMN shippeddate_day INT,
           shippeddate_month INT,
           shippeddate_year INT;

-- Update the newly added columns
UPDATE NORTHWIND_DATA.NWT_SCHEMA.orders_fresh
SET shippeddate_day = EXTRACT(day FROM shippeddate),
    shippeddate_month = EXTRACT(month FROM shippeddate),
    shippeddate_year = EXTRACT(year FROM shippeddate);
```

These corrected queries add separate columns for day, month, and year for `orderdate`, `requiredate`, and `shippeddate` in the `orders_fresh` table. The `UPDATE` statements then populate these columns based on the existing date values.

Make sure to adjust the table and schema names if needed based on your actual database schema.