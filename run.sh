#!/bin/bash

mkdir -p /monero/blockchain
/monero/build/release/bin/monerod --data-dir=/monero/blockchain --block-sync-size=20 --rpc-bind-ip 0.0.0.0 --restricted-rpc --confirm-external-bind
