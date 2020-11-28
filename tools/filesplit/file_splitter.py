#!/usr/bin/env python3
import argparse
from typing import List
from c_file import CFile

'''
NOTES:
    - In case data or functions are used across sharded files:
        - Remove `static` from all data pools.
        - Remove `static` from all functions. Add static functions to corresponding header. 
    - Extract all functions and all data declarations.
'''

if __name__ == "__main__":
    # TODO: Change this description.
    parser = argparse.ArgumentParser(description="Pre-process .c files and post-process .o files to enable embedding assembly into C.")
    parser.add_argument('filename', help="path to .c code", type=str)
    parser.add_argument('--reverse', help="functions in file should be linked in reverse order", default=False, type=bool)    
    args = parser.parse_args()
    
    c_file = CFile(args.filename)
    c_file.process()