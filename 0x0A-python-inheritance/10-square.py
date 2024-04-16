#!/usr/bin/python3
""" Module 10-square
that inherits from Rectangle (9-rectangle.py):
"""

Rectangle = __import__('9-rectangle').Rectangle


class Square(Rectangle):
    """ Square class that inherits from Rectangle. """
    def __init__(self, size):
        """ Square size initialization then validation """
        super().integer_validator("size", size)
        super().__init__(size, size)
        self.__size = size

    def area(self):
        """ Square area calculation """
        return self.__size * self.__size
