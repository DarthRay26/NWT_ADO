DELETE FROM northwind_data.nwt_schema.raw_category
WHERE categoryid like 'NULL'
   or categoryname like 'NULL';

DELETE FROM northwind_data.nwt_schema.raw_customer
WHERE customerid like 'NULL' 
   or address like 'NULL'
   or city like 'NULL';
DELETE FROM northwind_data.nwt_schema.raw_employees
WHERE employeeid like 'NULL';
DELETE FROM northwind_data.nwt_schema.raw_employee_territories
WHERE employeeid like 'NULL'
   or territoryid like 'NULL';
DELETE FROM northwind_data.nwt_schema.raw_orders
WHERE orderid like 'NULL'
   or customerid like'NULL'
   or employeeid like 'NULL'
   or shipaddress like 'NULL'
   or shipcity like 'NULL';

DELETE FROM northwind_data.nwt_schema.raw_order_detail
WHERE orderid like 'NULL'
   productid like 'NULL'
   quantity like 'NULL'
   unitprice like 'NULL';
DELETE FROM northwind_data.nwt_schema.raw_product
WHERE categoryid like 'NULL'
   or productid like 'NULL'
   or productname like 'NULL'
   or quantityperunit like 'NULL'
   or unitprice like 'NULL';
DELETE FROM northwind_data.nwt_schema.raw_region
WHERE regionid like 'NULL'
   or regiondescription like 'NULL';
DELETE FROM northwind_data.nwt_schema.raw_shipper
WHERE shipperid like 'NULL'
   or companyname like 'NULL';

DELETE FROM northwind_data.nwt_schema.raw_supplier
WHERE supplierid like 'NULL'
   or companyname like 'NULL'
   or address like 'NULL'
   or city like 'NULL';

DELETE FROM northwind_data.nwt_schema.raw_territory
WHERE territoryid like 'NULL'
   or territorydescription like 'NULL'
   or regionid like 'NULL';