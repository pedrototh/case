FROM mysql:8

ENV MYSQL_ROOT_PASSWORD=Senha@123!

ENV MYSQL_DATABASE=data_alone
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=Senha@123!

ENV MYSQL_DATA_DIR=/var/lib/mysql
ENV MYSQL_RUN_DIR=/run/mysqld
ENV MYSQL_LOG_DIR=/var/log/mysql

COPY *.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
