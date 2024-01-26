import pandas as pd
from snowflake.connector.pandas_tools import write_pandas
from snowflake.connector import connect
import os

# Create a Snowflake connection
conn = connect(
    user=os.getenv("SNOWFLAKE_USER"),
    password=os.getenv("SNOWFLAKE_PASSWORD"),
    account=os.getenv("SNOWFLAKE_ACCOUNT"),
    warehouse=os.getenv("SNOWFLAKE_WAREHOUSE"),
    database=os.getenv("SNOWFLAKE_DATABASE"),
    schema=os.getenv("SNOWFLAKE_SCHEMA"),
    role=os.getenv("SNOWFLAKE_ROLE"),
)

# Create a cursor object
cur = conn.cursor()

# SQL command to drop the table if it exists
drop_table_sql = "DROP TABLE IF EXISTS NORTHWIND_DATA.NWT_SCHEMA.ORDERS_FRESH"

# Execute the SQL command
cur.execute(drop_table_sql)

# SQL command to create the table
create_table_sql = """
CREATE TABLE NORTHWIND_DATA.NWT_SCHEMA.ORDERS_FRESH (
    ORDERID NUMBER(38,0),
    CUSTOMERID VARCHAR(16777216),
    EMPLOYEEID NUMBER(38,0),
    ORDERDATE DATE,
    REQUIREDDATE DATE,
    SHIPPEDDATE DATE,
    SHIPVIA NUMBER(38,0),
    FREIGHT NUMBER(38,0),
    SHIPNAME VARCHAR(16777216),
    SHIPADDRESS VARCHAR(16777216),
    SHIPCITY VARCHAR(16777216),
    SHIPREGION VARCHAR(16777216),
    SHIPPOSTALCODE VARCHAR(16777216),
    SHIPCOUNTRY VARCHAR(16777216),
    primary key (ORDERID),
    constraint FK_CUSTOMERID foreign key (CUSTOMERID) references NORTHWIND_DATA.NWT_SCHEMA.CUSTOMER(CUSTOMERID),
    constraint FK_SHIPVIA foreign key (SHIPVIA) references NORTHWIND_DATA.NWT_SCHEMA.SHIPPER(SHIPPERID),
    constraint FK_EMPLOYEEID foreign key (EMPLOYEEID) references NORTHWIND_DATA.NWT_SCHEMA.EMPLOYEES(EMPLOYEEID)
)
"""

# Execute the SQL command
cur.execute(create_table_sql)

# Download orders_fresh.csv
df = pd.read_csv('https://raw.githubusercontent.com/just4jc/Northwind-Traders-Dataset/main/order_fresh.csv')

# Convert column names to uppercase
df.columns = df.columns.str.upper()

# Write to Snowflake
success, nchunks, nrows, _ = write_pandas(conn, df, 'ORDERS_FRESH')

# Close the connection
conn.close()
