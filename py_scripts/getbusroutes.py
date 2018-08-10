import json

from MyDatabase import *
db = MyDatabase()
db.connect()
sql = "SELECT * FROM bus_route order by route_no asc, direction desc;"

rows , desc = db.fetchall(sql)

row_headers=[x[0] for x in desc] #this will extract row headers
#print row_headers
json_data=[]
for result in rows:
	json_data.append(dict(zip(row_headers,result)))
print json.dumps(json_data)


