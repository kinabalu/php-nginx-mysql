# base image
#
FROM                    mystic/baseimage
MAINTAINER              Mystic Coders, LLC

RUN                     echo "APT::Get::Assume-Yes true;" >> /etc/apt/apt.conf.d/80custom
RUN                     echo "APT::Get::Quiet true;" >> /etc/apt/apt.conf.d/80custom

# Workaround for known bug http://stackoverflow.com/questions/25193161/chfn-pam-system-error-intermittently-in-docker-hub-builds
RUN                     ln -s -f /bin/true /usr/bin/chfn

#
# *** OS-level packages ***
#
RUN                     sudo apt-get install -y mysql-server

#
# Configure MySQL
#
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD lfg.sql /tmp/

RUN /usr/sbin/mysqld & \
    sleep 10s &&\
    echo "GRANT ALL ON *.* TO admin@'%' IDENTIFIED BY 'changeme' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql &&\
    mysql < /tmp/lfg.sql

EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"]