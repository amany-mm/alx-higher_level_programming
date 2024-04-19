#!/usr/bin/python3
"""8-class_to_json"""


def class_to_json(obj):
    """ A function that returns the dictionary description
    with simple data structure (list, dictionary, string,
    integer and boolean) for JSON serialization of an object

    Args:
        obj (Any): object

    Returns:
        dict[str, int]: the dictionary description
        with simple data structure for JSON serialization of an object
    """

    return obj.__dict__
