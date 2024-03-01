# Use Ubuntu as the base image
FROM ubuntu:latest

# Install the BIND DNS server software
RUN apt-get update && apt-get install -y bind9 net-tools
# Copy the BIND configuration files
COPY named.conf /etc/bind/named.conf
COPY internal.l1-6.lab /etc/bind/internal.l1-6.lab
COPY reverse.lab /etc/bind/reverse.lab

# Expose the DNS port
EXPOSE 53/tcp
EXPOSE 53/udp

# Start the DNS server when the container starts
CMD ["named", "-g"]
