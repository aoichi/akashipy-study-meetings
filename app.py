from bottle import route, run, template
from events import get_events


@route('/events')
def events():
    return template('events', events=get_events())

run(host='localhost', port=8080, debug=True, reloader=True)
