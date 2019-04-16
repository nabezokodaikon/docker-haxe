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

RUN git config --global http.sslVerify false
RUN git clone --depth 1 https://github.com/nabezokodaikon/dotfiles.git /home/builder/dotfiles

ENV HOME /home/builder
RUN /home/builder/dotfiles/script/install.sh

RUN chmod -R 755 /home/builder

WORKDIR /home/builder/workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 744 /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
