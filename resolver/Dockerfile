# Use Ubuntu as the base image
FROM ubuntu:latest

# Install the BIND DNS server software
RUN apt-get update && apt-get install -y bind9

# Copy the BIND configuration files
COPY named.conf /etc/bind/named.conf
COPY named.conf.options /etc/bind/named.conf.options
COPY named.conf.local /etc/bind/named.conf.local
COPY db.woodytoys.test /etc/bind/db.woodytoys.test
COPY db.172.22.0 /etc/bind/db.172.22.0

# Expose the DNS port
EXPOSE 53/tcp
EXPOSE 53/udp

# Start the DNS server when the container starts
CMD ["named", "-g"]
