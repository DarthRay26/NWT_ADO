select * 
from northwind_data.nwt_schema.employees
where year(birthdate) > 2024 or year(birthdate)<1900;

select * 
from northwind_data.nwt_schema.employees
where year(hiredate) > 2024 or year(hiredate)<1900;

select * 
from northwind_data.nwt_schema.orders
where year(orderdate) > 2024 or year(orderdate)<1900;

select * 
from northwind_data.nwt_schema.orders
where year(shippeddate) > 2024 or year(shippeddate)<1900;
select * 
from northwind_data.nwt_schema.orders
where year(requireddate) > 2024 or year(requireddate)<1900;

select * 
from northwind_data.nwt_schema.order_detail
where discount<0 or quantity<0 or unitprice<0;

select * 
from northwind_data.nwt_schema.product
where unitprice<0 or unitsinstock<0 or unitsonorder<0 or unitprice<0;

