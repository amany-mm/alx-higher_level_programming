#!/usr/bin/python3
""" Module 0-read_file """


def read_file(filename=""):
    """ reads a text file (UTF8) and prints it to stdout

    Args:
        filename (str, optional): filename.
    """
    with open(file=filename, mode="r", encoding="utf-8") as f:
        print(f.read(), end="")
