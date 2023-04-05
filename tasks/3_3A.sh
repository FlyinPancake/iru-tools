#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <number>"
  exit 1
fi

divisor=$1

while read -r col1 col2 col3 col4 col5; do
  if echo "$col1" | grep -Eq "^[0-9]+$" && [ $((col1 % divisor)) -eq 0 ]; then
    echo "$col1 $col5 $col3 $col4 $col2"
  fi
done
