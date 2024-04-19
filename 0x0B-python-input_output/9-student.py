#!/usr/bin/python3
""" 9-student module """


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

    def to_json(self):
        """ retrieves a dictionary representation of a Student instance """
        return self.__dict__
