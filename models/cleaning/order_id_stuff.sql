DELETE FROM raw_order_detail
WHERE orderid NOT IN (SELECT orderid FROM raw_order);