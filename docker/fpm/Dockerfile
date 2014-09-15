FROM                    mystic/baseimage
MAINTAINER              Mystic Coders, LLC

# ENV                     DEBIAN_FRONTEND noninteractive

# CMD                     ["/sbin/my_init"]

# Disable SSH per phusion/baseimage https://github.com/phusion/baseimage-docker#disabling_ssh
# RUN                     rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh
# RUN                     apt-add-repository ppa:ondrej/php5

# Fix for occasionally missing the key
# RUN                     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C

RUN                     apt-get update && apt-get install -y \
                        lib32z1-dev \
                        libxml2-dev \
                        libxslt1-dev \
                        antiword \
                        poppler-utils \
                        php5-cli \
                        php5-fpm \
                        php5-mysql \
                        php5-curl \
                        php5-gd \
                        php5-mcrypt
                        # phantomjs

# the kriansa/H2P code stupidly thinks phantomjs is installed in /usr/local/bin so let's give 'em what they want
RUN                     ln -s /usr/bin/phantomjs /usr/local/bin/phantomjs

RUN                     sed -i '/daemonize /cdaemonize = no' /etc/php5/fpm/php-fpm.conf
RUN                     sed -i '/^listen = /clisten = 0.0.0.0:9000' /etc/php5/fpm/pool.d/www.conf
RUN                     sed -i '/^listen.allowed_clients/c;listen.allowed_clients =' /etc/php5/fpm/pool.d/www.conf
RUN                     sed -i '/^;catch_workers_output/ccatch_workers_output = yes' /etc/php5/fpm/pool.d/www.conf


EXPOSE                  9000

CMD                     ["/usr/sbin/php5-fpm"]