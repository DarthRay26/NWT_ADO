import numpy as np
import pandas as pd
# Download orders_fresh.csv
df = pd.read_csv('https://raw.githubusercontent.com/just4jc/Northwind-Traders-Dataset/main/order_fresh.csv')

# Write to Snowflake
df.to_sql('ORDERS_FRESH', con, if_exists='replace', index=False)
