from flask import render_template, redirect, request
from app import app
import chats, users, messages

@app.route("/")
def index():
    return render_template("index.html") 
