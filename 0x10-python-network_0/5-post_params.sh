#!/bin/bash
# Bash script takes URL, sends POST request URL & displays body of response; Usage: ./5-post_params.sh 0.0.0.0:5000/route_6 ; echo ""
curl -X POST -sd "email=test@gmail.com&subject=I will always be here for PLD" "$1"
