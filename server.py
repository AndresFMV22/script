from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    return 'Hola telematica si señor jajajaa'

@app.route('/render')
def render():
    return render_template('hello.html')

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

