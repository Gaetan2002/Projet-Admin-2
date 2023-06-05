FROM ubuntu:22.04

COPY install_postfix.sh /tmp/install_postfix.sh
COPY entrypoint.sh /entrypoint.sh
# Update
RUN apt-get update && \
    # Install packages
    apt-get install -y apt-utils && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    dnsutils bind9utils nano iputils-ping mutt curl inetutils-traceroute postfix links wget net-tools iproute2 && \
    chmod +x /tmp/install_postfix.sh && \
    chmod +x /entrypoint.sh && \
    /tmp/install_postfix.sh && \
    rm /tmp/install_postfix.sh && \
    # Add users
    useradd -m -s /bin/bash samuel && \
    useradd -m -s /bin/bash julien && \
    useradd -m -s /bin/bash gaetan && \
    # Set passwords
    echo "samuel:password" | chpasswd && \
    echo "julien:password" | chpasswd && \
    echo "gaetan:password" | chpasswd

ENTRYPOINT ["/entrypoint.sh"]