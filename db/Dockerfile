FROM postgres:9.6
#RUN /bin/bash -c 'apt-get update; apt-get install -y iputils-ping; apt-get install -y telnet'
ENV PGDATA /var/lib/pgsql/data/
ENV POSTGRES_PASSWORD passwrod
ENV POSTGRES_USER postgres
ENV POSTGRES_DB postgres
ENV WORK_DB rosbank

COPY init-user-db.sh /docker-entrypoint-initdb.d/

#COPY postgres.conf.d/* /etc/postgres/conf.d/