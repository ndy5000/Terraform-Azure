#!/bin/bash

# Update all packages that have available updates.
sudo apt-get update
sudo apt-get upgrade -y

# Install Python 3 and pip.
sudo apt-get install python3-pip -y

# Upgrade pip3.
sudo pip3 install --upgrade pip

# Install Ansible 
sudo pip3 install 'ansible[azure]'

# Install Ansible az collection for interacting with Azure.
ansible-galaxy collection install azure.azcollection

# Install Ansible modules for Azure
sudo pip3 install -r ~/.ansible/collections/ansible_collections/azure/azcollection/requirements-azure.txt
