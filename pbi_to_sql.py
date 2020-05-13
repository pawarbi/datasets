# 'dataset' holds the input data for this script
# install pyodbc , sqlalchemy
import sqlalchemy

from sqlalchemy import create_engine, MetaData, Table, select

from six.moves import urllib

# change SERVER name with your server name & database name with your database name
# For Driver, search odbc in Windows > Driver Use the driver installed there
params = urllib.parse.quote_plus("DRIVER=ODBC Driver 17 for SQL Server;SERVER=localhost;DATABASE=pbi;trusted_connection=yes")

engine = sqlalchemy.create_engine("mssql+pyodbc:///?odbc_connect=%s" % params, echo=False) 

connection = engine.raw_connection()

#engine.connect() 
# suppose df is the data-frame that we want to insert in database

#if_exists: Use replace if you want to replace an existing table with named "from_pbi" You can use any table name
dataset.to_sql(name='from_pbi',con=engine, index=False, if_exists='append')
