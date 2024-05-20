
from sqlalchemy import create_engine
import pandas as pd

# Replace the placeholders with your MySQL connection details
host = 'localhost'
port = '3306'
database = 'IPL'
username = 'root'
password = 'vincenzo' 

# Create the MySQL connection string
connection_string = f'mysql+pymysql://{username}:{password}@{host}:{port}/{database}'

# Create the engine
engine = create_engine(connection_string)

df = pd.read_csv('cricket_data.csv')
df.to_sql('ipl', con=engine, if_exists='replace', index=False)
