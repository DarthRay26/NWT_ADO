INSERT INTO {{ ref('orders') }}
SELECT *
FROM {{ ref('orders_fresh') }}
