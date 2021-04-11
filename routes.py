from flask import render_template, redirect, request
from app import app
import chats, users, messages

@app.route("/")
def index():
    return render_template("index.html") 

@app.route("/login", methods=["POST", "GET"])
def login():
    if request.method == "GET":
        username = request.form["username"]
        password = request.form["password"]
        session["username"] = username
        return redirect("/")

@app.route("/logout")
def logout ():
    del session["username"]
    return redirect("/")

