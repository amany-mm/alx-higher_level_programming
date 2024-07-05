#!/bin/bash
# Bash script takes URL, sends GET request to URL & displays body of response; Usage: ./1-body.sh 5B0.0.0.0:5000/route_1 ; echo ""
curl -sL "$1"
