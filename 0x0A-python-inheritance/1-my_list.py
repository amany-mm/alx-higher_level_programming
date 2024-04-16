#!/usr/bin/python3
""" 1-my_list module """


class MyList(list):
    """ class MyList that inherits from list. """

    def print_sorted(self):
        """print list of integer elements

        Returns:
            list (int): list of all the elements of type integer.
        """
        return sorted(self)
