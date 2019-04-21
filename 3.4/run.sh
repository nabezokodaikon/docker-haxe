#/bin/bash

REPOSITORY=${HOME}/workspace/develop/learning-haxe

docker run --name haxe3.4 \
           --hostname haxe \
           -e TZ=JST-9 \
           -v $REPOSITORY:/home/developer/repository \
           -it \
           --rm nabezokodaikon/haxe3.4 /usr/bin/zsh
