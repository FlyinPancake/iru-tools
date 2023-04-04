#!/bin/env python3

if __name__ == "__main__":
    neptun = input("Enter NEPTUN: ")
    subtask_id = sum([ord(cha) for cha in  neptun]) % 4
    print(["A", "B", "C", "D"][subtask_id])
    
