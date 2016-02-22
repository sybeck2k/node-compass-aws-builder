FROM node:4.2.6

MAINTAINER Roberto Migli <robertomigli@gmail.com>

RUN apt-get update -qy
RUN apt-get --no-install-recommends install -y ruby2.1 ruby2.1-dev locales python python-pip
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen && localedef -i en_US -f UTF-8 en_US.UTF-8 && export LANGUAGE=en_US.UTF-8 && export LANG=en_US.UTF-8 && export LC_ALL=en_US.UTF-8

RUN gem2.1 install compass -q --no-ri --no-rdoc
RUN pip install awscli
RUN npm install -g --silent phantomjs bower grunt-cli typings