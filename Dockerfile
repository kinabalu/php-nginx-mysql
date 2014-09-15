# base image
#
FROM                    phusion/baseimage

USER                    root
RUN                     echo "APT::Get::Assume-Yes true;" >> /etc/apt/apt.conf.d/80custom
RUN                     echo "APT::Get::Quiet true;" >> /etc/apt/apt.conf.d/80custom
RUN                     apt-get update

#
# *** OS-level packages ***
#

RUN                     apt-get install -y git build-essential python-software-properties
RUN                     apt-get install -y python python-dev python-distribute python-pip
