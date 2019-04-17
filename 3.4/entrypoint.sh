#!/bin/bash

USER_ID=${LOCAL_UID:-9001}
GROUP_ID=${LOCAL_GID:-9001}
useradd -u $USER_ID -o -m user
groupmod -g $GROUP_ID user
export HOME=/home/user

mkdir /home/user/haxelib && haxelib setup /home/user/haxelib

chown -R user:user /home/user

exec /usr/sbin/gosu user "$@"
