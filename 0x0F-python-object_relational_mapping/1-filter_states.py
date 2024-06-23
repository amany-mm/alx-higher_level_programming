#!/usr/bin/python3
"""A script that lists states with name starting with N from hbtn_0e_0_usa"""

from sys import argv
import MySQLdb


def main():
    """ Function that connects to MySQL server on localhost at port 3306 """

    # connect to database
    db = MySQLdb.connect(host="localhost",
                         port=3306,
                         user=argv[1],
                         passwd=argv[2],
                         db=argv[3])

    # create cursor to exec queries using SQL
    cursor = db.cursor()

    cursor.execute(
        "SELECT * FROM states  WHERE name LIKE BINARY 'N%' ORDER BY id ASC")
    for row in cursor.fetchall():
        print(row)

    cursor.close()
    db.close()


if __name__ == "__main__":
    main()
