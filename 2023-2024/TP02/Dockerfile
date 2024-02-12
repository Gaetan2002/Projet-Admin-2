FROM nginx:latest
RUN apt update
RUN apt install -y nano net-tools iproute2 iputils-ping
COPY index.html /usr/share/nginx/html/index.html
