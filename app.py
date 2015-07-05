from bottle import route, run, template, request
from events import get_events


@route('/events')
def events():
    return template('events', events=get_events(request.query.keyword))

run(host='localhost', port=8080, debug=True, reloader=True)
