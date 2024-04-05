#!/usr/bin/python3

if __name__ == "__main__":
    import sys

    arguments = sys.argv
    total = 0

    for i in range(len(arguments) - 1):
        total += int(arguments[i + 1])

    print("{}".format(total))
