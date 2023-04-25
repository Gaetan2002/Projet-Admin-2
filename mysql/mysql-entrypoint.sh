#!/bin/bash
set -e

# Create databases and users for site1, site2, and site3
mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
  CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE1;
  CREATE USER IF NOT EXISTS '$MYSQL_USER1'@'%' IDENTIFIED BY '$MYSQL_PASSWORD1';
  GRANT ALL PRIVILEGES ON $MYSQL_DATABASE1.* TO '$MYSQL_USER1'@'%';

  CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE2;
  CREATE USER IF NOT EXISTS '$MYSQL_USER2'@'%' IDENTIFIED BY '$MYSQL_PASSWORD2';
  GRANT ALL PRIVILEGES ON $MYSQL_DATABASE2.* TO '$MYSQL_USER2'@'%';

  CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE3;
  CREATE USER IF NOT EXISTS '$MYSQL_USER3'@'%' IDENTIFIED BY '$MYSQL_PASSWORD3';
  GRANT ALL PRIVILEGES ON $MYSQL_DATABASE3.* TO '$MYSQL_USER3'@'%';

  FLUSH PRIVILEGES;
EOSQL

# Import init_db.sql to the first database
mysql -u root -p"$MYSQL_ROOT_PASSWORD" $MYSQL_DATABASE1 < /docker-entrypoint-initdb.d/init_db1.sql
mysql -u root -p"$MYSQL_ROOT_PASSWORD" $MYSQL_DATABASE2 < /docker-entrypoint-initdb.d/init_db2.sql
mysql -u root -p"$MYSQL_ROOT_PASSWORD" $MYSQL_DATABASE3 < /docker-entrypoint-initdb.d/init_db3.sql

# Execute the original entrypoint script
exec /usr/local/bin/docker-entrypoint.sh mysqld
