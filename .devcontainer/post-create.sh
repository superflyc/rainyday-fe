#!/usr/bin/env bash
set -e

pnpm install

sudo apt-get update
#watchman for react native/expo dev work
sudo apt-get install -y watchman