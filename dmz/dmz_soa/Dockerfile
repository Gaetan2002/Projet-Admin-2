# Use Ubuntu as the base image
FROM ubuntu:latest

# Install the BIND DNS server software
RUN apt-get update && apt-get install -y bind9 net-tools
# Copy the BIND configuration files
COPY named.conf /etc/bind/named.conf
COPY l1-6.ephec-ti.conf /etc/bind/l1-6.ephec-ti.conf
COPY reverse.public.conf /etc/bind/reverse.public.conf

# Expose the DNS port
EXPOSE 53

# Start the DNS server when the container starts
CMD ["named", "-g"]
