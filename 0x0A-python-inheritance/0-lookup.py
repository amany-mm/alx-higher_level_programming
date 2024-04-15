#!/usr/bin/python3
""" 0-lookup """


def lookup(obj):
    """lookup function that returns the list of available
    attributes and methods of an object

    Args:
        obj : object

    Returns:
        list: list of available attributes and methods of an object
    """
    return dir(obj)
