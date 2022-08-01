#!usr/bin/bash

# Author: Abhijith Ganesh
# Title: Installing a flask app

apt install python3-pip
python3 -m pip install flask
pip install flask

touch helloworld.py

echo  "
from flask import Flask 

app = Flask(__name__)

app.get("/")
def hello() -> str:
    return "Hello World!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
" > helloworld.py

