import requests

def get_events():
    r = requests.get('http://connpass.com/api/v1/event/?keyword=python')
    return r.json()['events']

