#!/bin/bash

apt-get update && apt-get upgrade -y

apt-get install rsync curl neovim -y

curl -sSL https://get.docker.com/ | sh

useradd -m -u 1012 -s /usr/bin/bash adguard

chown -R adguard:adguard /mnt/configs/adguard

docker compose pull
docker compose up