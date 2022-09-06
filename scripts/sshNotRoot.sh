#!/usr/bin/env bash
ssh-keyscan -H localhost >> ~/.ssh/known_hosts
chmod 400 ~/.ssh/id_ed25519 ~/.ssh/id_ed25519.pub
cp ~/.ssh/id_ed25519.pub ~/.ssh/authorized_keys

ansible-galaxy install -r requirements.yml
