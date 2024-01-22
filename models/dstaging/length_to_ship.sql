-- raw_orders_update.sql

WITH updated_raw_orders AS (
  SELECT
    *,
    DATEDIFF(day, shippeddate, requireddate) AS length_to_ship
  FROM {{ ref('raw_orders') }}
)

SELECT *
FROM updated_raw_orders
