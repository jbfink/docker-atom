FROM ubuntu:latest
MAINTAINER John Fink <john.fink@gmail.com>
RUN apt-get update # Fri Oct 24 13:09:23 EDT 2014d
#RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-setuptools vim-tiny nginx php5-cli php5-fpm php5-curl php5-mysql php5-xsl php5-json php5-ldap php-apc php5-readline mysql-client
RUN easy_install supervisor
RUN mkdir /var/log/supervisor/
ADD http://storage.accesstomemory.org/releases/atom-2.1.2.tar.gz /usr/share/nginx/
RUN ln -s /usr/share/nginx/atom-2.1.2 /usr/share/nginx/atom

#EXPOSE 80
#CMD ["/bin/bash", "/start.sh"]
