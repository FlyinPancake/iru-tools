#!/bin/env bash

# Disable PING reply

sudo iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
sudo iptables -L INPUT --line-numbers
