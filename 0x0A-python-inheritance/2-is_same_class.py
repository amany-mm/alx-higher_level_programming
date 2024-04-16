#!/usr/bin/python3
""" 2-is_same_class module """


def is_same_class(obj, a_class):
    """ returns True if the object is exactly an instance
    of the specified class ; otherwise False.

    Args:
        obj (Any): object
        a_class (Any): class

    Returns:
        Bool: returns True if the object is exactly an instance
        of the specified class ; otherwise False.
    """
    return type(obj) is a_class
