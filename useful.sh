#!/bin/bash/

packages=("vim" "net-tools" "tcpdump")
for pkg in "${packages[@]}"
do
	apt install -y $pkg
done
