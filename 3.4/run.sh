#/bin/bash

docker rm "haxe3.4"
docker run --name "haxe3.4" \
           -it -v ${HOME}/workspace/develop/learning-haxe:/home/user/workspace \
           -e LOCAL_UID=$(id -u $USER) \
           -e LOCAL_GID=$(id -g $USER) \
           nabezokodaikon/haxe3.4 zsh
