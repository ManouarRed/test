m flask import Flask
app = Flask(name)

@app.route('/')
def hello():
return 'Hello, World!'

if name == 'main':
# Listen on all interfaces, port 8000
app.run(host='0.0.0.0', port=8000)
