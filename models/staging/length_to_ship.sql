-- Add a new column for length to ship
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_orders
ADD COLUMN length_to_ship INT;

-- Update the newly added column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_orders
SET length_to_ship = DATEDIFF(day, shippeddate, requireddate);