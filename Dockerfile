FROM ubuntu:16.04
MAINTAINER Shaun McCloud<git@smccloud.com>

# Copy shell scripts
ADD bootstrap.sh /

# Run the bootstrap script
RUN bash /bootstrap.sh

# For NGINX test to keep container running
# RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

# For NGINX test to keep container running
# EXPOSE 80

# For NGINX test to keep container running
STOPSIGNAL SIGTERM

EXPOSE 18080
EXPOSE 18081

CMD ["nginx", "-g", "daemon off;"]

#/shares/Monero/monerod --data-dir=/shares/Monero/blockchain --block-sync-size=20 --rpc-bind-ip 0.0.0.0 --restricted-rpc --confirm-external-bind --detach