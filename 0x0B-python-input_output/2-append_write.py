#!/usr/bin/python3
""" Module 2-append_write """


def append_write(filename="", text=""):
    """ It appends a string at the end of a text file (UTF8)
    and returns the number of characters added.

    Args:
        filename (str, optional): file name.
        text (str, optional): text to append

    Return:
        The number of characters added
    """
    with open(file=filename, mode="a", encoding="utf-8") as f:
        return f.write(text)
