#!/bin/bash

USER_ID=${LOCAL_UID:-9001}
GROUP_ID=${LOCAL_GID:-9001}
useradd -u $USER_ID -o -m user
groupmod -g $GROUP_ID user
export HOME=/home/user

mkdir /home/user/haxelib && haxelib setup /home/user/haxelib

git config --global http.sslVerify false
git clone --depth 1 https://github.com/nabezokodaikon/dotfiles.git /home/user/dotfiles
/home/user/dotfiles/script/install.sh

exec /usr/sbin/gosu user "$@"
