#!/bin/env python3
import csv
import sys

if __name__ == "__main__":
    reader = csv.reader(sys.stdin, delimiter=",")
    writer = csv.writer(sys.stdout, delimiter=";", quoting=csv.QUOTE_MINIMAL)
    writer.writerows([row for row in reader])
