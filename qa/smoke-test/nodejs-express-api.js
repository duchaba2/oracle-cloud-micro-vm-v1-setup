// standard skeleton api app for nodejs using express-framework
//import 'dotenv/config';  // read the .evn
require('dotenv').config({path: __dirname + '/.env'})
//import cors from 'cors';  // handle cross-domain issue
const cors = require("cors")
//import express from 'express';  // the express-framework
const express = require("express")

// create the express-app
var app = express();

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
    res.send("For userId = 1, the name is Duc Haba");
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

var portN = 8888
try {
  portN = process.env.PORT;
}
catch (err) {
  portN = 8888
}
// looping waiting for htpp request
app.listen(portN, function() {
  console.log('App listening for GET, POST, PUT, DELETE on root (/) and for on on port');
  console.log(portN);
  return;
  }
);