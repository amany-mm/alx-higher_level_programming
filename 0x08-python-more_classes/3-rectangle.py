#!/usr/bin/python3
"""
Module 3-rectangle
Contains class Rectangle with private attribute width and height,
public area and perimeter methods, and allows printing #'s
"""


class Rectangle:
    """
    Defines class rectangle with private attribute width and height
    """
    def __init__(self, width=0, height=0):
        """ Initialize rectangles """
        self.width = width
        self.height = height

    @property
    def width(self):
        """ Getter width """
        return self.__width

    @width.setter
    def width(self, value):
        """ Setter width """
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value

    @property
    def height(self):
        """ Getter height """
        return self.__height

    @height.setter
    def height(self, value):
        """ Setter height """
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value

    def area(self):
        """ area calculation """
        return self.__width * self.__height

    def perimeter(self):
        """ perimeter calculation """
        if self.__width == 0 or self.__height == 0:
            return 0
        return (2 * self.__width) + (2 * self.height)

    def __str__(self):
        """Visualize the object representation."""
        if self.__width == 0 or self.__height == 0:
            return ""
        rows = []
        for _ in range(self.__height):
            row = "#" * self.__width
            rows.append(row)
        result = "\n".join(rows)
        return result
