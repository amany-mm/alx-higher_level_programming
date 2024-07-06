#!/usr/bin/python3
"""
Given Github repo and owner name as argvs,
use Github API to list last 10 commits
Usage: ./100-github_commits.py [github_repo] [github_owner]
"""
from sys import argv
import requests


if __name__ == "__main__":

    github_repo = argv[1]
    github_owner = argv[2]

    url = 'https://api.github.com/repos/{}/{}/commits'.format(
        github_owner, github_repo)

    r = requests.get(url)

    commit_lst = r.json()

    for commit in commit_lst[:10]:
        print(commit.get('sha'), end=': ')

        print(commit.get('commit').get('author').get('name'))
