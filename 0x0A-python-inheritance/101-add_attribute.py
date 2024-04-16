#!/usr/bin/python3
"""Module 101-add_attribute
has add_attribute() that adds a new attribute to an object if it’s possible
"""


def add_attribute(obj, attr_name, attr_value):
    """ add_attribute: adds a new attribute to an object if it’s possible
    - Raise a TypeError exception, with the message can't add new attribute
    if the object can’t have new attribute
    - Not allowed to use try/except
    - Not allowed to import any module

    Args:
        obj (object): object
        attr_name (str): attribute name
        attr_value (Any): attribute value

    Raises:
        TypeError: can't add new attribute
    """
    if not hasattr(obj, "__dict__"):
        raise TypeError("can't add new attribute")

    setattr(obj, attr_name, attr_value)
