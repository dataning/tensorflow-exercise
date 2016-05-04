#!/bin/bash

sudo apt-get install docker.io

sudo groupadd docker
sudo gpasswd -a ${USER} docker

## http://unix.stackexchange.com/questions/198536/difference-between-adding-sudo-user-with-adduser-or-gpasswd
