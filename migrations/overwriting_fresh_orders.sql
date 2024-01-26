-- Drop the existing ORDERS_FRESH table if it exists
DROP TABLE IF EXISTS NWT_SCHEMA.ORDERS_FRESH;

-- Copy the data from the staged file into the ORDERS_FRESH table
CREATE TABLE NWT_SCHEMA.ORDERS_FRESH AS
COPY INTO NWT_SCHEMA.ORDERS_FRESH
FROM 'https://github.com/just4jc/Northwind-Traders-Dataset/raw/main/order_fresh.csv'
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY='"' SKIP_HEADER = 1)
ON_ERROR = 'CONTINUE';
