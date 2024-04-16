#!/usr/bin/python3
""" Module 6-base_geometry """


class BaseGeometry:
    """ BaseGeometry class"""
    def area(self):
        """raises an Exception with the message area() is not implemented

        Raises:
            Exception: area() is not implemented
        """
        raise Exception("area() is not implemented")

    def integer_validator(self, name, value):
        """
        integer_validator validates value:
        - you can assume name is always a string
        - if value is not an integer: raise a TypeError exception,
            with the message <name> must be an integer
        - if value is less or equal to 0: raise a ValueError exception
            with the message <name> must be greater than 0

        Args:
            name (string): always a string
            value (integer): integer and greeter than 0, otherwise exception
        """
        if type(value) is not int:
            raise TypeError("{} must be an integer".format(name))
        if value <= 0:
            raise ValueError("{} must be greater than 0".format(name))
