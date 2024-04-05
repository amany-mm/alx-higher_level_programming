#!/usr/bin/python3

if __name__ == "__main__":
    import sys

    arguments = sys.argv[1:]
    count = len(sys.argv) - 1

    if count == 0:
        print("0 arguments.")
    elif count == 1:
        print("1 argument:")
    else:
        print("{} arguments:".format(count))

    for idx, arg in enumerate(arguments, start=1):
        print("{}: {}".format(idx, arg))
