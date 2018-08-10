import json
import sys

route_no = sys.argv[1]
route_no = route_no.replace("-", " ")
direction = sys.argv[2]


from MyDatabase import *
db = MyDatabase()
db.connect()
sql = "SELECT stop_id, lat, lon, stop_name FROM bus_stops where route_no = %s and direction = %s order by route_no, direction, sequence;"
val = (route_no, direction)
rows , desc = db.fetchraw(sql, val)

row_headers=[x[0] for x in desc] #this will extract row headers
#print row_headers
json_data=[]
for result in rows:
	json_data.append(dict(zip(row_headers,result)))
print json.dumps(json_data)


