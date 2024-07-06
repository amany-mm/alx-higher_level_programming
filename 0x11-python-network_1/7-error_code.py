#!/usr/bin/python3
"""
A Python script that takes in a URL, sends a request to the URL and displays
the body of the response.
Usage: ./7-error_code.py http://0.0.0.0:5000/status_401
"""
from sys import argv
import requests


if __name__ == "__main__":

    url = argv[1]
    r = requests.get(url)

    if r.status_code >= 400:
        print("Error code: {}".format(r.status_code))

    else:
        print(r.text)
