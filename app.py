from flask import Flask, jsonify
import socket

app = Flask(__name__)

@app.route("/")
def home():
    hostname = socket.gethostname()
    return f"<h1>Hello from Suraj's DevOps Project!</h1><p>Running inside container: <b>{hostname}</b></p>"

@app.route("/health")
def health():
    return jsonify(status="UP", message="Application is healthy"), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
