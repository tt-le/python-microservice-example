from flask import Flask
from os import environ

appid = environ.get('APPID')
app = Flask(__name__)

@app.route('/hello')
def index():
    return f"hello, world from application on port: {appid}\n"


if __name__ == '__main__':
    app.run(host='0.0.0.0',port=appid)