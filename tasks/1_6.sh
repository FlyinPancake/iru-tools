#!/bin/env bash

# Add a new user called "mekkelek" with your NEPTUN code as password
# The NEPTUN code is located in ~/.neptun

sudo useradd -m -p "$(cat ~/.neptun)" mekkelek
sudo -u mekkelek bash -c 'echo Hello from "$(whoami)"!'