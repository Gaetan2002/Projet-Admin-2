FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9

COPY named.conf /etc/bind/named.conf
COPY named.conf.options /etc/bind/named.conf.options
COPY named.conf.local /etc/bind/named.conf.local
COPY db.woodytoys.test /etc/bind/db.woodytoys.test

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named", "-g"]
