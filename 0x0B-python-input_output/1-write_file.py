#!/usr/bin/python3
""" Module 1-write_file """


def write_file(filename="", text=""):
    """ writes a string to a text file (UTF8)
    and returns the number of characters written

    Args:
        filename (str, optional): filename.
        text (str, optional): text to write to the file
    Return:
        The number of characters written
    """
    with open(file=filename, mode="w", encoding="utf-8") as f:
        return (f.write(text))
