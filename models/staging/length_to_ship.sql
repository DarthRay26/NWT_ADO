-- Add length_to_ship column to raw_orders
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_orders
ADD COLUMN length_to_ship INT;

-- Update the newly added length_to_ship column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_orders
SET length_to_ship = DATEDIFF(day, shippeddate, requireddate);

-- Verify the changes
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_orders;

