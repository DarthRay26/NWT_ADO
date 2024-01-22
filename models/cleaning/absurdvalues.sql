-- data_quality_checks.sql

-- Filter employees based on birthdate
SELECT *
FROM {{ ref('raw_employees') }}
WHERE EXTRACT(year FROM birthdate) > 2024 OR EXTRACT(year FROM birthdate) < 1900

-- Filter employees based on hiredate
SELECT *
FROM {{ ref('raw_employees') }}
WHERE EXTRACT(year FROM hiredate) > 2024 OR EXTRACT(year FROM hiredate) < 1900

-- Filter orders based on orderdate
SELECT *
FROM {{ ref('raw_orders') }}
WHERE EXTRACT(year FROM orderdate) > 2024 OR EXTRACT(year FROM orderdate) < 1900

-- Filter orders based on shippeddate and requireddate
SELECT *
FROM {{ ref('raw_orders') }}
WHERE EXTRACT(year FROM shippeddate) > 2024 OR EXTRACT(year FROM shippeddate) < 1900
   OR EXTRACT(year FROM requireddate) > 2024 OR EXTRACT(year FROM requireddate) < 1900

-- Filter order_detail based on discount, quantity, and unitprice
SELECT *
FROM {{ ref('raw_order_detail') }}
WHERE discount < 0 OR quantity < 0 OR unitprice < 0

-- Filter product based on unitprice, unitsinstock, unitsonorder, and reorderlevel
SELECT *
FROM {{ ref('raw_product') }}
WHERE unitprice < 0 OR unitsinstock < 0 OR unitsonorder < 0 OR reorderlevel < 0

