from bottle import route, run, template


@route('/')
def index():
    return '<b>Hello World!</b>'


@route('/hello')
def hello():
    return template('Hello', name='aoichi')


@route('/events')
def events():
    return template('Hello', name='aoichi')

run(host='localhost', port=8080, debug=True, reloader=True)
