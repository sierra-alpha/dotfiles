#!/usr/bin/env python3

import sys

def main(argv=None):
    if argv is None:
        argv = sys.argv

    with open(argv[1]) as f1:
        f1in = f1.read()

    with open(argv[2]) as f2:
        f2in = f2.read()

    if f2in not in f1in:
        f1out = f1in + "\n" + f2in
