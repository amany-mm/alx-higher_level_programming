#!/usr/bin/python3
"""
A Python script that fetches https://alx-intranet.hbtn.io/status
using requests.
Usage: ./5-hbtn_header.py https://alx-intranet.hbtn.io
"""
import requests


if __name__ == "__main__":
    r = requests.get("https://alx-intranet.hbtn.io/status")

    print("Body response:")
    print("\t- type: {}".format(type(r.text)))
    print("\t- content: {}".format(r.text))
