#!/bin/bash
# Bash script sends request to URL as arg & displays status code of response; Usage: ./100-status_code.sh 0.0.0.0:5000 ; echo ""
curl -s -o /dev/null -w "%{http_code}" "$1"
