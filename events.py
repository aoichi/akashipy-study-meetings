import requests


def get_events(keyword):
    url = 'http://connpass.com/api/v1/event/?keyword={0}'.format(keyword)
    r = requests.get(url)
    return r.json()['events']
