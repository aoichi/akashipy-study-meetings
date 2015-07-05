from bottle import route, run, template, request
from events import get_events


@route('/events')
def events():
    keyword = request.query.keyword
    return template(
        'events',
        events=get_events(keyword),
        keyword=keyword
    )
from os import environ
if environ['HEROKU']:
    run(host='0.0.0.0', port=int(environ.get('PORT', 5000)))
else:
    run(host='localhost', port=8080, debug=True, reloader=True)
