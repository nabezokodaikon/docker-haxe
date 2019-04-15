#/bin/bash

docker run -itd --name haxe nabezokodaikon/haxe3.4
docker exec -it haxe /usr/bin/zsh
