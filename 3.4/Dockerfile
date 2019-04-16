FROM ubuntu:18.04
MAINTAINER nabezokodaikon

RUN apt-get update -y
RUN apt-get install -y --no-install-recommends \
    software-properties-common \
    zsh \
    git \
    gosu

RUN add-apt-repository ppa:haxe/releases -y
RUN apt-get update -y
RUN apt-get install -y --no-install-recommends \
    haxe

WORKDIR /home/user/workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 744 /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
