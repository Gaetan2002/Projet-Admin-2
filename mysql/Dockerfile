FROM mysql:latest

COPY mysql-entrypoint.sh /docker-entrypoint-initdb.d/mysql-entrypoint.sh
COPY init_db1.sql /docker-entrypoint-initdb.d/init_db1.sql
COPY init_db2.sql /docker-entrypoint-initdb.d/init_db2.sql
COPY init_db3.sql /docker-entrypoint-initdb.d/init_db3.sql

RUN chmod +x /docker-entrypoint-initdb.d/mysql-entrypoint.sh
