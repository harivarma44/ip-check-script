#!/bin/bash
# get-ip.sh
# Simple script to print the primary IP address of the machine

# Capture the first non-loopback IPv4 address
ip=$(hostname -I | awk '{print $1}')

echo "Local IP Address: $ip"
