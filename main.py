from flask import Flask, jsonify

app = Flask(__name__) #create an instance of the Flask class you just imported

description = [
  { 'name': 'Muhammed Ali', 'country': "Nigeria", "gender":"male"}
]

@app.route('/')
def main():
  return jsonify(description)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)