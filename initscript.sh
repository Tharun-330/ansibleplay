#!/bin/bash
#This script installs docker, ansible and webserver apache2

# Update the package cache and install the dependencies needed for Docker
sudo apt-get update && \
    sudo apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release

# Add the Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add the Docker repository to the APT sources
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package cache and install Docker
sudo apt-get update && \
    sudo apt-get -y install docker-ce docker-ce-cli containerd.io

# Install Ansible and its dependencies
sudo apt-get -y install software-properties-common && \
    sudo apt-add-repository -y ppa:ansible/ansible && \
    sudo apt-get update && \
    sudo apt-get -y install ansible

# Install Apache web server
echo "Installing Apache web server..."
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2

# version checks
docker --version
ansible --version
systemctl status apache2
