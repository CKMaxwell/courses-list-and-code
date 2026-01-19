""" example code"""
import json
with open('people.json', 'w') as people_json:
    json.dump(people, people_json, indent=2)

import yaml
with open('people.yaml', 'w') as people_yaml:
    yaml.safe_dump(people, people_yaml)

###############################################
import json
people = [
  {
    "name": "Sabrina Green",
    "username": "sgreen",
    "phone": {
      "office": "802-867-5309",
      "cell": "802-867-5310"
    },
    "department": "IT Infrastructure",
    "role": "Systems Administrator"
  },
  {
    "name": "Eli Jones",
    "username": "ejones",
    "phone": {
      "office": "684-348-1127"
    },
    "department": "IT Infrastructure",
    "role": "IT Specialist"
  }
]

with open('people.json', 'w') as people_json:
    json.dump(people, people_json)


import requests
response = requests.get('https://www.google.com')
response = requests.get('https://www.google.com', stream=True)  # 輸出：the raw message compressed with gzip
response.request.headers['Accept-Encoding']   # 輸出：'gzip, deflate'
response.headers['Content-Encoding']   # 輸出：'gzip'
response.ok  # 輸出：True
response.status_code

response = requests.get(url)
if not response.ok:
    raise Exception("GET failed with status code {}".format(response.status_code))

response = requests.get(url)
response.raise_for_status()

# 產生parameter url
p = {"search": "grey kitten", "max_results": 15}
response = requests.get("https://example.com/path/to/api", params=p)
response.request.url
'https://example.com/path/to/api?search=grey+kitten&max_results=15'

p = {"description": "white kitten", "name": "Snowball", "age_months": 6}
response = requests.post("https://example.com/path/to/api", data=p)
response.request.url
'https://example.com/path/to/api'
response.request.body
'description=white+kitten&name=Snowball&age_months=6'

#################################################################
""" submit Code"""
#! /usr/bin/env python3
import os
import requests
file_name = os.listdir("/data/feedback")
url = 'http://34.170.55.80/feedback/'
for txt_file in file_name:
  if txt_file.endswith("txt"):
    temp_file = os.path.join("/data/feedback", txt_file)
    with open(temp_file) as txt_temp:
      txt = txt_temp.read().split("\n")
      feedback_dict = {"title": txt[0], "name": txt[1], "date": txt[2], "feedback": txt[3]}
      response = requests.post(url, data=feedback_dict)
      print(response.status_code)
