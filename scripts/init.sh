#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo apt update
sudo apt upgrade -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible openssh-server -y
