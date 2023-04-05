#!/bin/env bash

# Check if both filename arguments are provided
if [ $# -ne 2 ]; then
  echo "Please provide two file names as arguments."
  exit 1
fi

# Check if both files exist
if [ ! -f "$1" ] || [ ! -f "$2" ]; then
  echo "Both files must exist."
  exit 1
fi

# Compare the files and output the number of differing lines
grep -Fxvcf "$2" "$1"
grep -Fxvcf "$1" "$2"
