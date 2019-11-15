// standard skeleton api app for nodejs using express-framework
//import 'dotenv/config';  // read the .evn
require('dotenv').config({path: __dirname + '/.env'})
//import cors from 'cors';  // handle cross-domain issue
const cors = require("cors")
//import express from 'express';  // the express-framework
const express = require("express")

// create the express-app
var app = express();

// 
var getReqProp = function(req) {
  var val = {};
  val.headers = req.headers;
  val.url = req.url;
  val.method = req.method;
  val.body = req.body;
  val.cookies = req.cookies;
  val.hostname = req.hostname;
  val.ip = req.ip;
  val.params = req.params;
  val.query = req.query;
  return val;
};

// first, handle cross-domain issue, and forget about it :-)
app.use(cors());

//
app.get('/', function(req, res) {
  return res.send('Hello Duc Haba. Responding to your GET HTTP method');
});

//
app.get('/users/:userId', function(req, res) {
  var id = parseInt(req.params.userId);
  if (id == 1){
    var val = "For userId = 1, the name is Duc Haba";
    val += JSON.stringify(getReqProp(req), null, 2)
    res.send(val);
  }
  else {
    res.send("I only know userId = 1, but you send me userId #" + id);
  }
  return;
});

//
app.post('/', function(req, res) {
  return res.send('Hello Duc Haba. Responding to your POST HTTP method');
});

//
app.put('/', function(req, res) {
  return res.send('Hello Duc Haba. Responding to your PUT HTTP method');
});

//
app.delete('/', function(req, res) {
  return res.send('Hello Duc Haba. Responding to your  DELETE HTTP method');
});

var envMsg = "";
var portN = 8888;
try {
  portN = process.env.PORT;
  envMsg = " from .env ";
}
catch (err) {
  portN = 8888;
  envMsg = " NOT from .env ";
}
// looping waiting for htpp request
app.listen(portN, function() {
  console.log('App listening for GET, POST, PUT, DELETE on root (/) and for on on port');
  console.log(envMsg + portN );
  return;
  }
);