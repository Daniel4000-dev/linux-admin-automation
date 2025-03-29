#!/bin/bash
# Secure SSH and disable unnecessary services
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo systemctl stop apache2
sudo systemctl disable apache2
sudo apt-get update && sudo apt-get upgrade -y
sudo systemctl restart ssh
echo "System hardening completed."
