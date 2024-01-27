ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail
ADD COLUMN final_price DECIMAL(10, 2); -- Assuming appropriate data type for total_price

-- Update the newly added total_price column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail
SET final_price = unitprice * quantity * (1 - discount);

-- Verify the changes
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail;
