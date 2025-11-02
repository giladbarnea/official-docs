#!/usr/bin/env python3
import sys

with open(sys.argv[1]) as f:
    lines = f.readlines()

in_block = False
for line in lines:
    s = line.strip()
    if s.startswith('```'):
        in_block = not in_block
        print(line, end='')
    elif in_block and s.isdigit():
        continue
    else:
        print(line, end='')
