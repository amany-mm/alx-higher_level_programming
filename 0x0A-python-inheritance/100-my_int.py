#!/usr/bin/python3
"""
Module 100-my_int
Has a class MyInt that inherits from int
"""


class MyInt(int):
    """ Class MyInt that inherits from int. """

    def __eq__(self, value: object) -> bool:
        """ Inverts == operator """
        return self.real != value

    def __ne__(self, value: object) -> bool:
        """ Inverts != operator """
        return self.real == value
