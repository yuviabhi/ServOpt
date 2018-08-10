import sys
lat = sys.argv[1]
lon = sys.argv[2]
stopname = sys.argv[3]
route_no = sys.argv[4]
route_no = route_no.replace("-", " ")
direction = sys.argv[5]
radius = sys.argv[6]
sequence1 = 100


# lat = '22.53636885170191'
# lon = '88.39875857777906'
# stopname = 'ALL'
# route_no = 'AC-14'
# route_no = route_no.replace("-", " ")
# direction = 'DN'
# radius = 120
# sequence1 = 100

# print lat 
# print lon
# print stopname
# print model.radius


# import time
# import datetime
# added_on = datetime.datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d %H:%M:%S')
# print st

from MyDatabase import *
db = MyDatabase()
db.connect()

sql = "SELECT max(sequence) from bus_stops where route_no = %s and direction = %s"
val = (route_no, direction)
row = db.fetchraw(sql,val)
sequence = row[0][0][0]



stop_id = route_no.replace(" ", "") +'-'+ direction +'-'+ str(sequence)
sql = "INSERT INTO bus_stops (stop_id, route_no, direction, stop_name, lat, lon, radius, sequence) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
val = (stop_id, route_no, direction, stopname, lat, lon, radius, int(sequence)+1)
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

