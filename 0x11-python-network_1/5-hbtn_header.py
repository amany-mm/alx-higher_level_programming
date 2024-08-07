#!/usr/bin/python3
"""
A Python script that takes in a URL, sends a request to the URL and displays
the value of the variable X-Request-Id in the response header.
usage: ./5-hbtn_header.py https://intranet.hbtn.io
"""
from sys import argv
import requests


if __name__ == "__main__":
    r = requests.get(argv[1])
    print(r.headers.get('X-Request-Id'))
