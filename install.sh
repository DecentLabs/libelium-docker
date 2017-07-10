#!/bin/sh
echo "Installing Docker Runtime..."
apt-get install -y docker.io
curl -ks https://packagecloud.io/install/repositories/Hypriot/Schatzkiste/script.deb.sh | sudo bash
apt-get install -y docker-hypriot=1.10.3-1
sh -c 'usermod -aG docker $SUDO_USER'
systemctl enable docker.service
systemctl unmask docker.service
systemctl unmask docker.socket
systemctl start docker.service

