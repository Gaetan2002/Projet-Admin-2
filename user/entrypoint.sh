#!/bin/bash
set -e

echo "nameserver 192.168.0.10" > /tmp/resolv.conf
cat /tmp/resolv.conf > /etc/resolv.conf

# Start Postfix service
service postfix start

# Execute the provided command
exec "$@"
