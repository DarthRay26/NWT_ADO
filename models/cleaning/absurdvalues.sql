WITH order_detail_check AS (
    SELECT *
    FROM {{ ref('raw_order_detail') }}
    WHERE discount < 0 OR quantity < 0 OR unitprice < 0
)

-- Filter product based on unitprice, unitsinstock, unitsonorder, and reorderlevel
, product_check AS (
    SELECT *
    FROM {{ ref('raw_product') }}
    WHERE unitprice < 0 OR unitsinstock < 0 OR unitsonorder < 0 OR reorderlevel < 0
)

-- Combine the results
SELECT * FROM order_detail_check
UNION ALL
SELECT * FROM product_check
