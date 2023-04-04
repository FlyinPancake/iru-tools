#!/bin/env bash
lan_interface=$(ip addr show | grep "state UP" | awk '{print $2}' | cut -d: -f1 | grep -v lo)
local_network=$(ip addr show "$lan_interface" | grep "inet\b" | awk '{print $2}' | cut -d. -f1-3).0/24

sudo iptables -A INPUT -s "${local_network}" -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j DROP
sudo iptables -L INPUT --line-numbers
 