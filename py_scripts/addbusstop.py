import sys
lat = sys.argv[1]
lon = sys.argv[2]
stopname = sys.argv[3]

#lat = 22.11
#lon = 88.54
#stopname = 'abc'

print lat 
print lon
print stopname

import time
import datetime
added_on = datetime.datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S')
#print st

from MyDatabase import *
db = MyDatabase()
db.connect()
sql = "INSERT INTO bus_stops (lat, lon, stop_name, added_on) VALUES (%s, %s, %s, %s)"
val = (lat, lon, stopname, added_on)
db.insert(sql, val)


"""
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="servopt_db"
)

mycursor = mydb.cursor()

sql = "INSERT INTO bus_stops (lat, lon, stop_name, added_on) VALUES (%s, %s, %s, %s)"
val = (lat, lon, stopname, added_on)
mycursor.execute(sql, val)

mydb.commit()

print(mycursor.rowcount, "record inserted.")
"""

