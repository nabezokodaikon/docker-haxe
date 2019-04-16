#!/bin/bash

USER_ID=${LOCAL_UID:-9001}
GROUP_ID=${LOCAL_GID:-9001}
useradd -u $USER_ID -o -m builder
groupmod -g $GROUP_ID builder
export HOME=/home/builder

mkdir /home/builder/haxelib && haxelib setup /home/builder/haxelib

exec /usr/sbin/gosu builder "$@"
