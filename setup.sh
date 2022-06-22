#!/bin/bash
wget -O playit https://playit.gg/downloads/playit-0.8.3-beta 
chmod +x playit
mkdir ./data
./playit -c ./data/config.toml & sleep 20 ; kill $!
rm playit
rm -R logs
sudo docker-compose up -d --force-recreate
