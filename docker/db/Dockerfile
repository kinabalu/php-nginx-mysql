# base image
#
FROM                    mystic/baseimage

RUN                     echo "APT::Get::Assume-Yes true;" >> /etc/apt/apt.conf.d/80custom
RUN                     echo "APT::Get::Quiet true;" >> /etc/apt/apt.conf.d/80custom

#
# *** OS-level packages ***
#
RUN                     sudo apt-get install -y mysql-server

#
# Configure MySQL
#
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

RUN /usr/sbin/mysqld & \
    sleep 10s &&\
    echo "GRANT ALL ON *.* TO admin@'%' IDENTIFIED BY 'changeme' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql &&\

EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"]
