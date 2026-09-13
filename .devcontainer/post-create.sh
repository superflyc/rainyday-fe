#!/usr/bin/env bash
set -e

sudo apt-get update
#watchman for react native/expo dev work
sudo apt-get install -y watchman

pnpm install
pnpm exec playwright install --with-deps