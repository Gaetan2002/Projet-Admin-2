FROM ubuntu:latest

RUN apt-get update && apt-get install -y apt-utils dnsutils bind9utils nano iputils-ping mutt

# Preconfigure Postfix
COPY install_postfix.sh /tmp/install_postfix.sh
RUN /tmp/install_postfix.sh

# Clean up
RUN rm /tmp/install_postfix.sh

RUN useradd -m -s /bin/bash samuel
RUN useradd -m -s /bin/bash julien

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


EXPOSE 53/tcp
EXPOSE 53/udp
