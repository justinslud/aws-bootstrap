import flask

app = flask.Flask(__name__)

@app.route('/')
def greet():
    return {'statusCode': 200, 'message': 'Hello World!'}