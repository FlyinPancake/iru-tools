#!/bin/env bash

local_network=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d. -f1-3).0/24

sudo iptables -A INPUT -s "${local_network}" -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j DROP