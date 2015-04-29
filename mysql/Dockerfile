FROM mysql:latest
MAINTAINER John Fink <john.fink@gmail.com>
ENV MYSQL_ROOT_PASSWORD=worstpass
ADD ./docker-entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
#ENV MYSQL_DATABASE=atom
#ENV MYSQL_USER=atom
#ENV MYSQL_PASSWORD=worstpass
