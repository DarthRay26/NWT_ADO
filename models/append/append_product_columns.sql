-- USE SCHEMA NWT_SCHEMA;
-- ALTER TABLE PRODUCT
-- ADD COLUMN UNIT_COST NUMBER;


MERGE INTO PRODUCT P
USING PRODUCT_FRESH PF ON P.ProductID = PF.ProductID
WHEN MATCHED THEN
  UPDATE SET P.UNIT_COST = PF.UNITCOST;
