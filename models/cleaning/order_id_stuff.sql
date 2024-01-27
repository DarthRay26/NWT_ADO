DELETE FROM rr_orders
WHERE orderid NOT IN (
    SELECT MIN(orderid) AS min_orderid
    FROM rr_orders
    GROUP BY orderid
);