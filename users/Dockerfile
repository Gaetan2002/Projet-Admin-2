FROM ubuntu:22.04

COPY install_postfix.sh /tmp/install_postfix.sh
COPY entrypoint.sh /entrypoint.sh
# Update
RUN apt-get update && \
    # Install packages
    apt-get install -y apt-utils && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    dnsutils bind9utils nano iputils-ping mutt curl inetutils-traceroute postfix links wget && \
    chmod +x /tmp/install_postfix.sh && \
    /tmp/install_postfix.sh && \
    rm /tmp/install_postfix.sh && \
    # Add users
    useradd -m -s /bin/bash samuel && \
    useradd -m -s /bin/bash julien && \
    # Set passwords
    echo "samuel:password" | chpasswd && \
    echo "julien:password" | chpasswd

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 53/tcp
EXPOSE 53/udp
