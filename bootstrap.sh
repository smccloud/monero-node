#!/bin/bash

apt-get update
apt-get install -y wget bzip2
wget -O /monero-linux-x64-v0.11.0.0.tar.bz2 https://downloads.getmonero.org/cli/monero-linux-x64-v0.11.0.0.tar.bz2
tar xvf /monero-linux-x64-v0.11.0.0.tar.bz2
rm -f /monero-linux-x64-v0.11.0.0.tar.bz2
