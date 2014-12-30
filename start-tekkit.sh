#!/bin/sh

export VERSION=3.1.2

if [ ! -e Tekkit_Server_$VERSION.zip ]; then
  echo "Downloading Tekkit_Server_$VERSION.zip ..."
  wget -q http://mirror.technicpack.net/Technic/servers/tekkit/Tekkit_Server_$VERSION.zip
  unzip Tekkit_Server_$VERSION.zip -d /data/tekkit
fi

java $JVM_OPTS -jar /data/tekkit/Tekkit.jar nogui
