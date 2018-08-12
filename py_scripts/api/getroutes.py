# https://realpython.com/api-integration-in-python/
import json
import requests

resp = requests.get('http://180.92.171.167:8080/cstcIITKharagpur/receive/getAllRoutes')
if resp.status_code != 200:
    # This means something went wrong.
    raise ApiError('GET /tasks/ {}'.format(resp.status_code))

resp = json.dumps('[' + str(resp) + ']')
for todo_item in resp.json():
    print('{} {}'.format(todo_item['description'], todo_item['BusDetails']))

# print resp