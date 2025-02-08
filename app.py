from flask import Flask

app = Flask(__name__)

@app.route('/')
def greet():
    return "Hello Students, I'm running from Docker Container"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
