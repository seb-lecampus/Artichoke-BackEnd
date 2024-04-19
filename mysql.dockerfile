FROM mysql

COPY ./sql_scripts/install_db.sql /docker-entrypoint-initdb.d/1-install_db.sql
COPY ./sql_scripts/insert_db.sql /docker-entrypoint-initdb.d/2-insert_db.sql

#ENV MYSQL_ROOT_PASSWORD=root #define in the compose file