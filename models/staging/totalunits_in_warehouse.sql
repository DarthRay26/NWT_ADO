-- Add a new column for total units in warehouse
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.product
ADD COLUMN total_units_in_warehouse INT;

-- Update the newly added column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.product
SET total_units_in_warehouse = COALESCE(unitsinstock, 0) + COALESCE(unitsonorder, 0);
