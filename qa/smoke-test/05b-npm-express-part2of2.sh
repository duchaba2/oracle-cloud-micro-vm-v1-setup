#!/bin/bash
#
echo "-----------------------------------------------------------------"
echo "Part 2 of 2. Using curl to test the api/express"
echo "-----------------------------------------------------------------"
curl http://localhost:8888
curl -X POST http://localhost:8888
curl -X PUT http://localhost:8888
curl -X DELETE http://localhost:8888
curl -X GET http://localhost:8888/users/1
