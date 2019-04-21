FROM ubuntu:18.04
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

RUN useradd -m developer
USER developer

COPY --chown=developer entrypoint.sh /home/developer/entrypoint.sh
RUN chmod 744 /home/developer/entrypoint.sh

RUN mkdir /home/developer/repository && \
    chown -R developer:developer /home/developer/repository
WORKDIR /home/developer/repository

RUN git clone --depth 1 https://github.com/nabezokodaikon/dotfiles.git /home/developer/dotfiles && \
    /home/developer/dotfiles/script/install.sh

USER root
ENTRYPOINT ["/home/developer/entrypoint.sh"]
