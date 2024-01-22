-- raw_product_update.sql

WITH updated_raw_product AS (
  SELECT
    *,
    COALESCE(unitsinstock, 0) + COALESCE(unitsonorder, 0) AS total_units_in_warehouse
  FROM {{ ref('raw_product') }}
)

SELECT *
FROM updated_raw_product

