-- raw_order_detail_update.sql

WITH updated_raw_order_detail AS (
  SELECT
    *,
    unitprice * quantity AS total_price
  FROM {{ ref('raw_order_detail') }}
)

SELECT *
FROM updated_raw_order_detail
