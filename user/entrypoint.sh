#!/bin/bash
set -e

# Start Postfix service
service postfix start

# Execute the provided command
exec "$@"
