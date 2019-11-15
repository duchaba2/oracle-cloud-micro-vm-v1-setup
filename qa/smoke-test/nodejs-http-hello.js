console.log("Nodejs is listen to http request on: http://localhost:80");
console.log("To test use curl as in : >>curl http://localhost:80");
var http = require('http');
var server = http.createServer((function(request, response) {

  response.writeHead(200, { "Content-Type" : "text/plain" });
  response.write("\nHello Duc Haba at Oracle World. You are the best.\n");
  response.end();
  
}));
server.listen(80);
