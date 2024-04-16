#!/usr/bin/python3
"""
Module 9-rectangle

Has subclass Rectangle of BaseGeometry and area()
"""


BaseGeometry = __import__('7-base_geometry').BaseGeometry


class Rectangle(BaseGeometry):
    """ Rectangle class inherits from BaseGeometry. """
    def __init__(self, width, height):
        """ Rectangle width and height validation then initialization

        Args:
            width (integer): width
            height (integer): height
        """
        super().integer_validator("width", width)
        self.__width = width

        super().integer_validator("height", height)
        self.__height = height

    def area(self):
        """ rectangle area """
        return self.__height * self.__width

    def __str__(self):
        """ prints [Rectangle] <width>/<height> """
        return "[{}] {}/{}".format(self.__class__.__name__,
                                   self.__width, self.__height)
