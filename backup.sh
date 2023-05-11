#!/bin/bash

apt-get update && apt-get install rsync

# adguard
docker stop adguard
rsync -a /mnt/configs/adguard/* /mnt/data/backup/adguard/'adguard'-`date +%Y%m%d`/
docker start adguard