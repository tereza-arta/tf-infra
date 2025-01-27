#!/bin/bash

exec > /tmp/tools-installer.log 2>&1
set -x

#Docker
sudo apt update -y
sudo apt install docker.io -y
sudo groupadd docker
sudo usermod -aG docker ubuntu
newgrp docker
sudo reboot
