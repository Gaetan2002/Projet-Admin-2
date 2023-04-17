from ubuntu:latest

run apt-get update && apt-get install -y apt-utils apache2

expose 80/tcp

cmd ["apachectl", "-D", "FOREGROUND"]