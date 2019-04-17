#/bin/bash

docker run --name haxe3.4 \
           --hostname haxe \
           -it -v ${HOME}/workspace/develop:/home/user/workspace \
           -e LOCAL_UID=$(id -u $USER) \
           -e LOCAL_GID=$(id -g $USER) \
           -e TZ=JST-9 \
           --rm nabezokodaikon/haxe3.4 zsh
