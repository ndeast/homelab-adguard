#!/bin/bash

apt-get update && apt-get upgrade -y

apt-get install rsync curl neovim -y

curl -sSL https://get.docker.com/ | sh

useradd -m -u 1012 -s /usr/bin/bash adguard

chown -R adguard:adguard /mnt/configs/adguard

(crontab -l 2>/dev/null; echo "5 3 * * SUN /root/homelab-adguard/backup.sh") | crontab -

docker compose pull
docker compose up