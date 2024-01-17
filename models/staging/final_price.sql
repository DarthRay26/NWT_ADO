ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail
ADD COLUMN final_price DECIMAL(10, 2);  -- Adjust the data type based on your requirements

-- Update the newly added column
UPDATE NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail
SET final_price = total_price * (1 - COALESCE(discount, 0));