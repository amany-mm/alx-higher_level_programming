#!/bin/bash
# Bash script that sends a JSON POST request to a URL passed as the first argument, and displays the body of the response.; Usage: ./101-post_json.sh 0.0.0.0:5000/route_json my_json_0 ; echo ""
curl -sX POST -H "Content-Type: application/json" -d @"$2" "$1"
