#!/usr/bin/python3
"""
Python script that takes your GitHub credentials (username and password)
and uses the GitHub API to display your id
usage: ./10-my_github.py [github_username] [github_password]
"""
from sys import argv
import requests
from requests.auth import HTTPBasicAuth


if __name__ == "__main__":

    url = 'https://api.github.com/user'

    username = argv[1]
    password = argv[2]

    auth = HTTPBasicAuth(username, password)

    r = requests.get(url, auth=auth)

    print(r.json().get('id'))
