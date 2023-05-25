FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y apt-utils && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    dnsutils bind9utils nano iputils-ping mutt curl inetutils-traceroute postfix links wget

# Preconfigure Postfix
COPY install_postfix.sh /tmp/install_postfix.sh
RUN /tmp/install_postfix.sh

# Clean up
RUN rm /tmp/install_postfix.sh

RUN useradd -m -s /bin/bash samuel
RUN useradd -m -s /bin/bash julien

# Set passwords for users
RUN echo "samuel:password" | chpasswd
RUN echo "julien:password" | chpasswd

COPY entrypoint.sh /entrypoint.sh
COPY wait_for_dns.sh /wait_for_dns.sh
RUN chmod +x /wait_for_dns.sh
ENTRYPOINT ["/wait_for_dns.sh","/entrypoint.sh"]
EXPOSE 53/tcp
EXPOSE 53/udp
