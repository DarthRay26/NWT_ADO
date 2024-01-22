-- final_price_model.sql

WITH updated_raw_order_detail AS (
  SELECT
    *,
    COALESCE(total_price - (total_price * discount), final_price) AS final_price_updated
  FROM {{ ref('raw_order_detail') }}
)

SELECT *
FROM updated_raw_order_detail
