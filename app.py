from bottle import route, run, template


@route('/events')
def events():
    return template('Hello', name='aoichi')

run(host='localhost', port=8080, debug=True, reloader=True)
