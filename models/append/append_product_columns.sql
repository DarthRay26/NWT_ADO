MERGE INTO {{ ref('raw_product') }} P
USING {{ ref('product_fresh') }} PF ON P.ProductID = PF.ProductID
WHEN MATCHED THEN
  UPDATE SET P.UNIT_COST = PF.UNITCOST
