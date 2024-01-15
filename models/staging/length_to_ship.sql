-- Add a new column for length to ship
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.orders_fresh
ADD COLUMN length_to_ship INT;

-- Update the newly added column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.orders_fresh
SET length_to_ship = DATEDIFF(day, shippeddate, requireddate);