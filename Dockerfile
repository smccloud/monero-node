FROM ubuntu:16.04
MAINTAINER Shaun McCloud<git@smccloud.com>

# Copy shell scripts
ADD bootstrap.sh /

# Run the bootstrap script
RUN bash /bootstrap.sh

EXPOSE 18080
EXPOSE 18081

CMD ["bash", "/prerun.sh"]

#/shares/Monero/monerod --data-dir=/shares/Monero/blockchain --block-sync-size=20 --rpc-bind-ip 0.0.0.0 --restricted-rpc --confirm-external-bind --detach