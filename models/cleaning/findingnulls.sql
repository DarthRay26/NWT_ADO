--customers
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_customer
WHERE customerid like 'NULL'
   OR companyname like 'NULL'
   OR contactname like 'NULL'
   OR contacttitle like 'NULL'
   OR ADDRESS like 'NULL'
   OR CITY like 'NULL'
   OR POSTALCODE like 'NULL'
   OR COUNTRY like 'NULL'
   OR PHONE like 'NULL'
   OR FAX like 'NULL'

-- most of the null values ate from region 70 nulls 
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_customer
where region like 'NULL'

--employees
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_employees
WHERE employeeid like 'NULL'
   OR lastname like 'NULL'
   OR firstname like 'NULL'
   OR title like 'NULL'
   OR titleofcourtesy like 'NULL'
   OR birthdate like 'NULL'
   OR hiredate like 'NULL'
   OR address like 'NULL'
   OR city like 'NULL'
   OR region like 'NULL'
   OR POSTALCODE like 'NULL'
   OR country like 'NULL'
   OR homephone like 'NULL'
   OR extension like 'NULL'
   OR photo like 'NULL'
   OR notes like 'NULL'
   OR photopath like 'NULL'
--OR reportsto like 'NULL' have to have 1 null 

--region
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_employees
where region like 'NULL'
--employee territories 0 nulls 
SELECT count(*)
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_employee_territories
where employeeid like 'NULL'
or territoryid like'Null'

--orders -- null values in postal code
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_orders
WHERE ORDERID like 'NULL'
   OR customerid like 'NULL'
   OR employeeid like 'NULL'
   OR orderdate like 'NULL'
   OR requireddate like 'NULL'
   OR shippeddate like 'NULL'
   OR shipvia like 'NULL'
   OR freight like 'NULL'
   OR shipname like 'NULL'
   OR shipaddress like 'NULL'
   OR shipcity like 'NULL'
   OR shipcountry like 'NULL'
   OR shippostalcode like 'NULL'
-- orders -most of the nulls are from region
SELECT count(*)
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_orders
where shipregion like 'NULL'

-- Order detail (no nulls)
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_order_detail
WHERE ORDERID like 'NULL'
   OR productid like 'NULL'
   OR UNITPRICE like 'NULL'
   OR QUANTITY like 'NULL'
   OR discount like 'NULL'

--Product no nulls
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_product
WHERE ProductID like 'NULL'
   OR productname like 'NULL'
   OR SUPPLIERID like 'NULL'
   OR categoryid like 'NULL'
   OR quantityperunit like 'NULL'
   OR unitprice like 'NULL'
   OR unitsinstock like 'NULL'
   OR unitsonorder like 'NULL'
   OR reorderlevel like 'NULL'
   OR discontinued like 'NULL'
-- Region (no nulls)
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_region
WHERE regionid like 'NULL'
   OR regiondescription like 'NULL'

--Shipper(no nulls`)
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_shipper
WHERE shipperid like 'NULL'
   OR companyname like 'NULL'
   OR phone like 'NULL'

--Supplier most of the nulls are from region fax and homepage
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_supplier
WHERE supplierid like 'NULL'
   OR companyname like 'NULL'
   OR contactname like 'NULL'
   OR contacttitle like 'NULL'
   OR address like 'NULL'
   OR city like 'NULL'
   OR region like 'NULL'
   OR postalcode like 'NULL'
   OR country like 'NULL'
   OR phone like 'NULL'
   OR fax like 'NULL'
   OR homepage like 'NULL'

--territory no nulls 
SELECT *
FROM NORTHWIND_DATA.NWT_SCHEMA.raw_territory
WHERE territoryid like 'NULL'
   OR territorydescription like 'NULL'
   OR regionid like 'NULL'