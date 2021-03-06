#!/bin/sh

export VERSION=1.2.9e

if [ ! -e Tekkit_Server_v$VERSION.zip ]; then
  echo "Downloading Tekkit_Server_$VERSION.zip ..."
  wget -q http://mirror.technicpack.net/Technic/servers/tekkitmain/Tekkit_Server_v$VERSION.zip
  # Classic 3.1.2
  # wget -q http://mirror.technicpack.net/Technic/servers/tekkit/Tekkit_Server_$VERSION.zip
  unzip Tekkit_Server_v$VERSION.zip 
fi

java $JVM_OPTS -jar /data/Tekkit.jar nogui
