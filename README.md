# Build status
[![Build Status](https://travis-ci.org/smccloud/monero-node.svg?branch=master)](https://travis-ci.org/smccloud/monero-node)

# monero-node
A full node for Monero.  More nodes help the Monero network, but don't ask me how.  Updated to 0.13.0.4 and Ubuntu 18.04.

# Running
Run with docker run -itd -e 18080:18080 -e 18081:18081 -v "local blockchain location":/blockchain smccloud/monero-node:latest

If you want your node to be picked up by Moneroworld then run with this command instead docker run -itd -e 18080:18080 -e 18089:18081 smccloud/monero-node:latest
