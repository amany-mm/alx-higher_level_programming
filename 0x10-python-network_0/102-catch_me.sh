#!/bin/bash
# Bash script that makes a request to 0.0.0.0:5000/catch_me that causes the server to respond with a message containing You got me!, in the body of the response; Usage: ./102-catch_me.sh ; echo ""
curl -s -L -X PUT -H origin:School 0.0.0.0:5000/catch_me_3
