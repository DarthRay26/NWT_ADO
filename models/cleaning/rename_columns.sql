-- Rename the 'desciption' column to 'DESCRIPTION' in the 'category' table
ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_category
RENAME COLUMN desciption TO DESCRIPTION;

ALTER TABLE NORTHWIND_DATA.NWT_SCHEMA.raw_category
RENAME COLUMN catergoryname TO CATEGORYNAME;