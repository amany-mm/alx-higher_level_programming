#!/usr/bin/python3
""" 1-my_list module """


class MyList(list):
    """ class MyList that inherits from list. """

    def print_sorted(self):
        """print list of integer elements"""
        print(sorted(self))
