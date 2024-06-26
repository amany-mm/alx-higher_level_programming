#!/usr/bin/python3
""" 3-is_kind_of_class module """


def is_kind_of_class(obj, a_class):
    """is_kind_of_class

    Args:
        obj (ANY): object
        a_class (ANY): class

    Returns:
        Bool: returns True if the object is an instance of,
        or if the object is an instance of a class that inherited from,
        the specified class ; otherwise False.
    """
    return isinstance(obj, a_class)
