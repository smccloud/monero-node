#!/bin/bash

mkdir -p /monero-v0.11.0.0/blockchain
/monero-v0.11.0.0/monerod --data-dir=/monero-v0.11.0.0/blockchain --block-sync-size=20 --rpc-bind-ip 0.0.0.0 --restricted-rpc --confirm-external-bind