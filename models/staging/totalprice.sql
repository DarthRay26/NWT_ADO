-- Add a new column for total price
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail
ADD COLUMN total_price DECIMAL(10, 2);  -- Adjust the data type based on your requirements

-- Update the newly added column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail
SET total_price = unitprice * quantity;