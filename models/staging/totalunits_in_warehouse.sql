-- Add total_units_in_warehouse column to raw_product
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_product
ADD COLUMN total_units_in_warehouse INT; -- Assuming appropriate data type for total_units_in_warehouse

-- Update the newly added total_units_in_warehouse column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_product
SET total_units_in_warehouse = COALESCE(unitsinstock, 0) + COALESCE(unitsonorder, 0);

-- Verify the changes
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_product;
