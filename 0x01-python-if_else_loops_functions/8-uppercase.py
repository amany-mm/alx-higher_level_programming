#!/usr/bin/python3
def uppercase(str):
    for c in str:
        if ord('a') <= ord(c) <= ord('z'):
            # convert lower case letter using ASCII manipulation
            c = chr(ord(c)-ord('a')+ord('A'))
        print('{}'.format(c), end='')
    print()
