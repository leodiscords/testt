#!/bin/bash

sudo apt update && sudo apt install apt-transport-https ca-certificates curl software-properties-common

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt-cache policy docker-ce && sudo apt install docker-ce

docker volume create portainer_data && docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

docker pull qmcgaw/gluetun && docker pull jepbura/gaganode

sudo ufw allow 443 && sudo ufw allow 36060

sleep 15s && echo ' Done '

/bin/bash
