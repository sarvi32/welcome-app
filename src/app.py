from flask import request
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    user_agent = request.headers.get("User-Agent")
    message = "<h1>Welcome to 2024</h1>"
    return message + "<br>" + user_agent

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8090)