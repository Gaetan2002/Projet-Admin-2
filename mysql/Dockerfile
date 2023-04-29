FROM mysql:latest

COPY mysql-entrypoint.sh /docker-entrypoint-initdb.d/mysql-entrypoint.sh
COPY init_db.sql /docker-entrypoint-initdb.d/init_db.sql

RUN chmod +x /docker-entrypoint-initdb.d/mysql-entrypoint.sh
