#!/usr/bin/python3
""" 10-student module """


class Student:
    """ Student class """
    def __init__(self, first_name: str, last_name: str, age: int) -> None:
        """ instantiation

        Args:
            first_name (str): first name
            last_name (str): last name
            age (int): age
        """
        self.first_name = first_name
        self.last_name = last_name
        self.age = age

    def to_json(self, attrs=None):
        """ - If attrs is a list of strings, only attribute names
        contained in this list must be retrieved.
        - Otherwise, all attributes must be retrieved """

        if isinstance(attrs, list) and all(isinstance(e, str) for e in attrs):
            return ({
                name: getattr(self, name) for name in attrs
                if hasattr(self, name)
            })

        return self.__dict__
