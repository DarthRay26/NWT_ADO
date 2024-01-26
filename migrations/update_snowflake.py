pip install SQLAlchemy
import pandas as pd
from sqlalchemy import create_engine, sessionmaker
import os

# Create a SQLAlchemy engine for Snowflake
engine = create_engine(f'snowflake://{os.getenv("SNOWFLAKE_USER")}:{os.getenv("SNOWFLAKE_PASSWORD")}@{os.getenv("SNOWFLAKE_ACCOUNT")}/{os.getenv("SNOWFLAKE_DATABASE")}/{os.getenv("SNOWFLAKE_SCHEMA")}?role={os.getenv("SNOWFLAKE_ROLE")}&warehouse={os.getenv("SNOWFLAKE_WAREHOUSE")}')

# Create a session
Session = sessionmaker(bind=engine)
session = Session()

# Download orders_fresh.csv
df = pd.read_csv('https://raw.githubusercontent.com/just4jc/Northwind-Traders-Dataset/main/order_fresh.csv')

# Write to Snowflake
df.to_sql('ORDERS_FRESH', con=engine, if_exists='replace', index=False)

# Close the session
session.close()
