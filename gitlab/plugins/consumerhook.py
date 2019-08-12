#!/usr/bin/python3
import requests
import sys

json_data=sys.stdin.read()

response = requests.post("http://gitlab.justcalm.ink:8081/events/kafkaProducer/gitlab/marykay",data=json_data.encode("utf-8"))
print(response.text)
