MERGE INTO raw_product P
USING product_fresh PF ON P.ProductID = PF.ProductID
WHEN MATCHED THEN
    UPDATE SET P.UNIT_COST = PF.UNITCOST;