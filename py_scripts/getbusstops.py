import json

from MyDatabase import *
db = MyDatabase()
db.connect()
#sql = "SELECT stop_id, lat, lon, stop_name FROM bus_stops_new"
sql = "SELECT stop_id, lat, lon, stop_name FROM bus_stops_new order by route_no, direction, sequence;"

rows , desc = db.fetchall(sql)

row_headers=[x[0] for x in desc] #this will extract row headers
#print row_headers
json_data=[]
for result in rows:
	json_data.append(dict(zip(row_headers,result)))
print json.dumps(json_data)


