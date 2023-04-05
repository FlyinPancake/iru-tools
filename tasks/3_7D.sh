#!/bin/env bash

awk -F ',' '{ groups[$1] += 1 } END { for (group in groups) { print group ":", groups[group] } }' | sort