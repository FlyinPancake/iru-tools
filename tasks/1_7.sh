#!/bin/env bash

# Give the user "mekkelek" sudo privileges

sudo usermod -aG sudo mekkelek
sudo -u mekkelek bash -c 'sudo -l'