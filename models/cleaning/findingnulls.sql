-- data_quality_checks.sql

-- category 
SELECT *
FROM {{ ref('raw_category') }}
WHERE categoryid IS NULL
   OR categoryname IS NULL
   OR description IS NULL
   OR picture IS NULL

-- customers
SELECT *
FROM {{ ref('raw_customer') }}
WHERE customerid IS NULL
   OR companyname IS NULL
   OR contactname IS NULL
   OR contacttitle IS NULL
   OR ADDRESS IS NULL
   OR CITY IS NULL
   OR POSTALCODE IS NULL
   OR COUNTRY IS NULL
   OR PHONE IS NULL
   OR FAX IS NULL

-- most of the null values are from region 70 nulls 
SELECT *
FROM {{ ref('raw_customer') }}
WHERE region IS NULL

-- employees
SELECT *
FROM {{ ref('raw_employees') }}
WHERE employeeid IS NULL
   OR lastname IS NULL
   OR firstname IS NULL
   OR title IS NULL
   OR titleofcourtesy IS NULL
   OR birthdate IS NULL
   OR hiredate IS NULL
   OR address IS NULL
   OR city IS NULL
   OR region IS NULL
   OR POSTALCODE IS NULL
   OR country IS NULL
   OR homephone IS NULL
   OR extension IS NULL
   OR photo IS NULL
   OR notes IS NULL
   OR photopath IS NULL
   OR reportsto IS NULL
-- OR reportsto IS NULL have to have 1 null 
;

-- region
SELECT *
FROM {{ ref('raw_employees') }}
WHERE region IS NULL

-- employee territories 0 nulls 
SELECT count(*)
FROM {{ ref('raw_employee_territories') }}
WHERE employeeid IS NULL
   OR territoryid IS NULL

-- orders -- null values in postal code
SELECT *
FROM {{ ref('raw_orders') }}
WHERE ORDERID IS NULL
   OR customerid IS NULL
   OR employeeid IS NULL
   OR orderdate IS NULL
   OR requireddate IS NULL
   OR shippeddate IS NULL
   OR shipvia IS NULL
   OR freight IS NULL
   OR shipname IS NULL
   OR shipaddress IS NULL
   OR shipcity IS NULL
   OR shipcountry IS NULL
   OR shippostalcode IS NULL

-- orders -most of the nulls are from region
SELECT count(*)
FROM {{ ref('raw_orders') }}
WHERE shipregion IS NULL

-- Order detail (no nulls)
SELECT *
FROM {{ ref('raw_order_detail') }}
WHERE ORDERID IS NULL
   OR productid IS NULL
   OR UNITPRICE IS NULL
   OR QUANTITY IS NULL
   OR discount IS NULL

-- Product no nulls
SELECT *
FROM {{ ref('raw_product') }}
WHERE ProductID IS NULL
   OR productname IS NULL
   OR SUPPLIERID IS NULL
   OR categoryid IS NULL
   OR quantityperunit IS NULL
   OR unitprice IS NULL
   OR unitsinstock IS NULL
   OR unitsonorder IS NULL
   OR reorderlevel IS NULL
   OR discontinued IS NULL

-- Region (no nulls)
SELECT *
FROM {{ ref('raw_region') }}
WHERE regionid IS NULL
   OR regiondescription IS NULL

-- Shipper (no nulls)
SELECT *
FROM {{ ref('raw_shipper') }}
WHERE shipperid IS NULL
   OR companyname IS NULL
   OR phone IS NULL

-- Supplier most of the nulls are from region, fax, and homepage
SELECT *
FROM {{ ref('raw_supplier') }}
WHERE supplierid IS NULL
   OR companyname IS NULL
   OR contactname IS NULL
   OR contacttitle IS NULL
   OR address IS NULL
   OR city IS NULL
   OR region IS NULL
   OR postalcode IS NULL
   OR country IS NULL
   OR phone IS NULL
   OR fax IS NULL
   OR homepage IS NULL

-- Territory no nulls 
SELECT *
FROM {{ ref('raw_territory') }}
WHERE territoryid IS NULL
   OR territorydescription IS NULL
   OR regionid IS NULL
