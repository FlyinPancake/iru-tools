#!/bin/env bash

echo "This script will install mysql-server and secure it."
echo "You will be asked to set a root password for mysql."
echo "Don't forget to disable socket authentication"

# Install mysql
sudo mysql_secure_installation