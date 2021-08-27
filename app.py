from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/foo")
def hello_foo():
    return "<p>Hello from foo!</p>"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
