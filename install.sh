#!/usr/bin/env bash

set -xeuo pipefail

if [ ! -d files ]; then
  echo 'Cannot find files directory' >&2
  exit 1
fi

cp -R ./files/. "$HOME" || true
sudo chown -R "$(id -u)" "$HOME" || true
chmod -R 700 ~/.ssh/ || true

sudo cp -R ./files/. /root || true
sudo chown -R root:root /root || true
sudo chmod -R 700 /root/.ssh || true
