# base image
#
FROM                    debian:jessie
MAINTAINER              Mystic Coders, LLC

USER                    root

RUN                     apt-get update && apt-get install -y \
                        git \
                        build-essential \
                        python-software-properties \
                        python \
                        python-dev \
                        python-distribute \
                        python-pip
