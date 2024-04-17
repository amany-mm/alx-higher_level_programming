#!/usr/bin/python3
""" 4.from_json_string """

import json


def from_json_string(my_str):
    """A function that returns an object represented by a JSON string

    Args:
        my_str (str): string

    Returns:
        JSON: an object represented by a JSON string
    """

    return json.loads(my_str)
