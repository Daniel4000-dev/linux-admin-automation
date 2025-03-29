#!/bin/bash
# Adds a user with SSH key setup
USERNAME=$1
if [ ! -z "$USERNAME" ]; then
  sudo useradd -m -s /bin/bash $USERNAME
  sudo mkdir /home/$USERNAME/.ssh
  sudo cp ~/.ssh/authorized_keys /home/$USERNAME/.ssh/
  sudo chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh
  echo "User $USERNAME created and SSH keys added."
else
  echo "Usage: $0 <username>"
fi
