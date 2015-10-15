FROM ubuntu:latest
MAINTAINER John Fink <john.fink@gmail.com>
RUN apt-get update # Wed Oct  7 14:31:52 EDT 2015
#RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-setuptools vim-tiny nginx php5-cli php5-fpm php5-curl php5-mysql php5-xsl php5-json php5-ldap php-apc php5-readline mysql-client sed git gearman-job-server software-properties-common
ADD ./etc.nginx.sites-available.atom /etc/nginx/sites-available/atom
RUN ln -s /etc/nginx/sites-available/atom /etc/nginx/sites-enabled/atom
RUN rm /etc/nginx/sites-enabled/default
ADD ./etc.php5.fpm.pool.d.atom.conf /etc/php5/fpm/pool.d/atom.conf
RUN rm /etc/php5/fpm/pool.d/www.conf
RUN git clone --branch stable/2.2.x https://github.com/artefactual/atom /usr/share/nginx/atom
ADD ./compile-css.sh /compile-css.sh
RUN /compile-css.sh
RUN chown -R www-data:www-data /usr/share/nginx/atom
RUN mv /etc/php5/fpm/php-fpm.conf /etc/php5/fpm/php-fpm.conf.bak
RUN sed -e "s/;daemonize\ =\ yes/daemonize\ =\ no/" /etc/php5/fpm/php-fpm.conf.bak  > /etc/php5/fpm/php-fpm.conf 
RUN mv /etc/php5/fpm/php.ini /etc/php5/fpm/php.ini.bak
RUN sed -e "s/max_execution_time\ =\ 30/max_execution_time\ =\ 300/" /etc/php5/fpm/php.ini.bak > /etc/php5/fpm/php.ini
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
RUN sed -e  "/http\ {/{n;s/.*/fastcgi_read_timeout 300;/}" /etc/nginx/nginx.conf.bak > /etc/nginx/nginx.conf
RUN easy_install supervisor
RUN mkdir /var/log/supervisor/
ADD ./supervisord.conf /etc/supervisord.conf
#ENTRYPOINT ["/usr/local/bin/supervisord" "-n"]

#EXPOSE 80
CMD ["/bin/bash", "supervisord -n"]
