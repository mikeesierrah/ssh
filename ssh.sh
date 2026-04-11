#!/bin/bash

# Change Here
SSH_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIv6hCWuGyj9JIWrzxOQErRw9pELRu+xuOND/ZSYZe+J mike@key"


mkdir -p ~/.ssh
echo "$SSH_KEY" >> ~/.ssh/authorized_keys


chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

echo "SSH key installed successfully."
