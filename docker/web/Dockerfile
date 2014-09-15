# base image
#
FROM                    mystic/baseimage

#
# *** OS-level packages ***
#

RUN                     add-apt-repository -y ppa:nginx/stable
RUN                     apt-get -y update
RUN                     apt-get install -y lib32z1-dev libxml2-dev libxslt1-dev antiword poppler-utils
RUN                     apt-get install -y php5-cli php5-fpm php5-mysql php5-curl php5-gd php5-mcrypt
RUN                     apt-get install -y nginx
RUN                     apt-get install -y phantomjs

# the kriansa/H2P code stupidly thinks phantomjs is installed in /usr/local/bin so let's give 'em what they want
RUN                     ln -s /usr/bin/phantomjs /usr/local/bin/phantomjs

#
# Configure nginx
#

RUN                      mkdir /var/www
#ADD                     default /etc/nginx/sites-available/default

# End Nginx-PHP

# RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD default /etc/nginx/sites-available/
RUN                     echo "daemon off;" >> /etc/nginx/nginx.conf

ENTRYPOINT /usr/sbin/php5-fpm -c /etc/php5/fpm && /usr/sbin/nginx -c /etc/nginx/nginx.conf

EXPOSE 80
