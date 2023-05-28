#!/bin/bash

# Wait for the DNS server to be ready
until nslookup dns_server; do
  echo "Waiting for DNS server..."
  sleep 1
done

# Start the main process
exec "$@"
