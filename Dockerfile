FROM ubuntu:18.04
MAINTAINER Shaun McCloud<git@smccloud.com>
LABEL version="v0.13.0.4"

# Copy shell scripts
ADD run.sh /

# Setup the image
RUN apt-get update
RUN apt-get install -y wget bzip2
RUN wget -O /monero-linux-x64-v0.13.0.4.tar.bz2 https://github.com/monero-project/monero/releases/download/v0.13.0.4/monero-linux-x64-v0.13.0.4.tar.bz2
RUN tar xvf /monero-linux-x64-v0.13.0.4.tar.bz2
RUN rm -f /monero-linux-x64-v0.13.0.4.tar.bz2
RUN mv /monero-0.13.0.4 /monero
RUN mkdir -p /blockchain

# Stop the container
STOPSIGNAL SIGTERM

# Expose the two ports needed for the Monero daemon
EXPOSE 18080
EXPOSE 18081

CMD ["/bin/bash", "/run.sh"]
