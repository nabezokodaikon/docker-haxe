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
RUN git clone --depth 1 https://github.com/nabezokodaikon/dotfiles.git /home/user/dotfiles

ENV HOME /home/user
RUN /home/user/dotfiles/script/install.sh

WORKDIR /home/user

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 744 /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
