-- rename_category_columns.sql

-- Rename the 'desciption' column to 'DESCRIPTION' in the 'category' table
ALTER TABLE {{ ref('raw_category') }}
RENAME COLUMN desciption TO DESCRIPTION

-- Rename the 'catergoryname' column to 'CATEGORYNAME' in the 'category' table
ALTER TABLE {{ ref('raw_category') }}
RENAME COLUMN catergoryname TO CATEGORYNAME
