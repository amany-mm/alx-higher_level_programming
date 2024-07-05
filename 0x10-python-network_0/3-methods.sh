#!/bin/bash
# Bash script that takes URL and displays all HTTP methods server will accept; Usage: ./3-methods.sh 0.0.0.0:5000/route_4
curl -si -X OPTIONS "$1" | grep "Allow" | cut -c 8-
