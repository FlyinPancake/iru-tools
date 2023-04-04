#!/bin/env bash

# Upload dumped SQL file to the server

SQL_FILE="/root/students.sql"

mysql -u root -p < $SQL_FILE