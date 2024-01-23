-- Add total_price column to raw_order_detail
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail
ADD COLUMN total_price DECIMAL(10, 2); -- Assuming appropriate data type for total_price

-- Update the newly added total_price column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail
SET total_price = unitprice * quantity;

-- Verify the changes
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail;
