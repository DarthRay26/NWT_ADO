-- Step 1: Insert new records from orders_fresh into orders
INSERT INTO orders
SELECT *
FROM orders_fresh;

-- Step 2: Remove duplicates from orders
DELETE FROM orders
WHERE orderid IN (
    SELECT orderid
    FROM (
        SELECT
            orderid,
            ROW_NUMBER() OVER (PARTITION BY orderid ORDER BY (SELECT NULL)) AS RowNum
        FROM orders
    )
    WHERE RowNum > 1
);