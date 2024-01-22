-- raw_orders_update.sql

WITH updated_raw_orders AS (
  SELECT
    *,
    EXTRACT(day FROM orderdate) AS orderdate_day,
    EXTRACT(month FROM orderdate) AS orderdate_month,
    EXTRACT(year FROM orderdate) AS orderdate_year,
    EXTRACT(day FROM requireddate) AS requireddate_day,
    EXTRACT(month FROM requireddate) AS requireddate_month,
    EXTRACT(year FROM requireddate) AS requireddate_year,
    EXTRACT(day FROM shippeddate) AS shippeddate_day,
    EXTRACT(month FROM shippeddate) AS shippeddate_month,
    EXTRACT(year FROM shippeddate) AS shippeddate_year
  FROM {{ ref('raw_orders') }}
)

SELECT *
FROM updated_raw_orders

