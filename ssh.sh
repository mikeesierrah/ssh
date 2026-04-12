#!/bin/bash

SSH_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIv6hCWuGyj9JIWrzxOQErRw9pELRu+xuOND/ZSYZe+J mike@key"

mkdir -p ~/.ssh && chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys

grep -qxF "$SSH_KEY" ~/.ssh/authorized_keys || {
    tail -c1 ~/.ssh/authorized_keys | read -r _ || echo >> ~/.ssh/authorized_keys
    echo "$SSH_KEY" >> ~/.ssh/authorized_keys
}
