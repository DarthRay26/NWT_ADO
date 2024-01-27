ALTER TABLE raw_orders
ADD COLUMN order_status VARCHAR(20);

UPDATE raw_orders
SET order_status = CASE
    WHEN SHIPPEDDATE IS NULL THEN 'Not Shipped Yet'
    WHEN SHIPPEDDATE > REQUIREDDATE THEN 'Late'
    WHEN SHIPPEDDATE < REQUIREDDATE THEN 'Early'
    ELSE 'On Time'
END;