FROM ubuntu/bind9:latest

EXPOSE 53/udp
EXPOSE 53/tcp

RUN apt-get update && apt-get install -y dnsutils && rm -rf /var/lib/apt/lists/*

RUN chmod 777 /etc/bind/ && \
    cd /etc/bind/ && \
    rm -rf l1-3.ephec-ti.be.zone.*

RUN dnssec-keygen -a RSASHA256 -b 2048 -n ZONE l1-3.ephec-ti.be && \
    dnssec-keygen -f KSK -a RSASHA256 -b 4096 -n ZONE l1-3.ephec-ti.be && \
    mv K* /etc/bind/
