#!/bin/env bash

# Disable ssh login for root

sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
sudo systemctl restart sshd

echo Test \'ssh root@localhost\'