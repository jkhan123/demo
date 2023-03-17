#!/bin/bash/

# Update the apt package index and install packages to allow apt to use a repository over HTTPS:
apt-get update && install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

#Add Docker’s official GPG key

mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#update apt packages
apt update


#install docker engine, cli and compose
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin 
