#!usr/bin/bash

# Author: Abhijith Ganesh
# Title: Installing a flask app

apt install python3-pip -y
python3 -m pip install flask
pip install flask

touch helloworld.py

echo  "
from flask import Flask 

app = Flask(__name__)

@app.get("/")
def hello() -> str:
    return 'Hello World!'

" > helloworld.py

pip install hypercorn

pip freeze>requirements.txt