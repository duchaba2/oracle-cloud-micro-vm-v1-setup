console.log("Nodejs is listen to http request on: http://localhost:80 \n");
console.log("Use curl as in : >>curl http://localhost:80");
var http=require('http');
var server=http.createServer((function(request,response);
{
        response.writeHead(200,
        {"Content-Type" : "text/plain"});
        response.end("Hello Duc Haba at Oracle World. You are the best.\n");
}));
server.listen(80);
