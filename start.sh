#!/bin/sh
set -e
sudo chown -R minecraft:minecraft /data
exec su -s /bin/bash -c /start-minecraft minecraft
