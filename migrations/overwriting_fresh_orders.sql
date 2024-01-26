-- Drop the existing ORDERS_FRESH table if it exists
DROP TABLE IF EXISTS NWT_SCHEMA.ORDERS_FRESH;

-- Create a new ORDERS_FRESH table based on the dynamically fetched fresh data from GitHub
CREATE TABLE NWT_SCHEMA.ORDERS_FRESH AS
SELECT *
FROM (
    -- Dynamically fetch the latest data from GitHub
    SELECT *
    FROM https://github.com/just4jc/Northwind-Traders-Dataset/raw/main/order_fresh.csv
);
