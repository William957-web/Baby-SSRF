from flask import Flask, request, send_file
import os
import subprocess
from functools import wraps

app = Flask(__name__, static_url_path='/static')



def local_only(f):
    @wraps(f)
    def wrapper(*args, **kwargs):
        if request.remote_addr != '127.0.0.1':
            return 'Only local access is allowed'
        return f(*args, **kwargs)
    return wrapper


@app.route('/')
def index():
    return send_file('index.html')

@app.route('/@<path:url>')
def proxy(url):
    res = subprocess.run(['curl', '-s', url], stdout=subprocess.PIPE)
    return res.stdout

@app.route('/admin', methods=['GET', 'POST'])
@local_only
def admin():
    if request.method == 'GET':
        return '<h1>why are u here?</h1>'


if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=8089)
