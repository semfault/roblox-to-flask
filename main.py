from urllib import request
from flask import Flask, request

app = Flask(__name__)

network = {
    'ipaddr': '127.0.0.1',
    'port': '8080'
}

@app.route('/get', methods=['GET'])
def get():
    msg = "this is a response to roblox instance, sent from python"
    print(msg)
    return msg

@app.route('/post', methods=["POST"])
def post():
    data = list(request.form)
    print(data)
    return data

app.run(host=network['ipaddr'], port=network['port'])
