#!/bin/env bash

echo "$USER"
date "+%Y. %m. %d."
who | awk '{print $1}'
who -b | awk '{print $3,$4}'
echo $$