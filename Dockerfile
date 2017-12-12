FROM ubuntu:16.04
MAINTAINER Shaun McCloud<git@smccloud.com>
LABEL version="v0.11.1.0"

# Copy shell scripts
ADD run.sh /

# Run the bootstrap script
#RUN bash /bootstrap.sh
RUN apt-get update
RUN apt-get install -y wget bzip2
RUN wget -O /monero-linux-x64-v0.11.1.0.tar.bz2 https://downloads.getmonero.org/cli/monero-linux-x64-v0.11.1.0.tar.bz2
RUN tar xvf /monero-linux-x64-v0.11.1.0.tar.bz2
RUN rm -f /monero-linux-x64-v0.11.1.0.tar.bz2
RUN vm /monero-v0.11.1.0 /monero
RUN mkdir -p /monero/blockchain

# Stop the container
STOPSIGNAL SIGTERM

# Expose the two ports needed for the Monero daemon
EXPOSE 18080
EXPOSE 18081

CMD ["/bin/bash", "/run.sh"]
