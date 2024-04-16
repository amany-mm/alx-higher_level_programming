#!/usr/bin/python3
""" 4-inherits_from module """


def inherits_from(obj, a_class):
    """ check if obj is inherited from a class

    Args:
        obj (ANY): object
        a_class (ANY): class

    Returns:
        Bool: returns True if the object is an instance of,
        or if the object is an instance of a class that inherited from,
        the specified class ; otherwise False.
    """
    return (issubclass(type(obj), a_class) and type(obj) is not a_class)
