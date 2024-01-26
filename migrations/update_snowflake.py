import numpy as np
import pandas as pd
import snowflake.connector
import os
# Download orders_fresh.csv
df = pd.read_csv('https://raw.githubusercontent.com/just4jc/Northwind-Traders-Dataset/main/order_fresh.csv')

# Write to Snowflake
df.to_sql('ORDERS_FRESH', con, if_exists='replace', index=False)
