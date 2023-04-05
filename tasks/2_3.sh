#!/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Copy virtual host configuration

sudo cp "$SCRIPT_DIR"/../files/010-iru-site.conf /etc/apache2/sites-available/010-iru-site.conf
sudo a2ensite 010-iru-site.conf
sudo systemctl reload apache2

# Clone git repo to temp directory
temp_dir=$(mktemp -d)
git clone https://github.com/ng201/iru.git "$temp_dir"

# Copy webroot
sudo mkdir -p /var/www/irulabor
sudo cp -r "$temp_dir"/web/* /var/www/irulabor/


# Add irulabor.vmware to /etc/hosts that points to 127.0.0.1
echo "127.0.0.1 irulabor.vmware" | sudo tee -a /etc/hosts
