#!/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Copy virtual host configuration

sudo cp "$SCRIPT_DIR"/../files/010-iru-site.conf /etc/apache2/sites-available/010-iru-site.conf