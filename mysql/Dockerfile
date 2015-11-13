FROM mysql:latest
MAINTAINER John Fink <john.fink@gmail.com>
RUN mv /etc/mysql/my.cnf /etc/mysql/my.cnf.orig
RUN sed -e "s/sql_mode=NO_ENGINE_SUBSTITUTION,STRICT_TRANS_TABLES/sql_mode=NO_ENGINE_SUBSTITUTION/" /etc/mysql/my.cnf.orig > /etc/mysql/my.cnf
ENV MYSQL_ROOT_PASSWORD=worstpass
ADD ./docker-entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
#ENV MYSQL_DATABASE=atom
#ENV MYSQL_USER=atom
#ENV MYSQL_PASSWORD=worstpass
