FROM ubuntu:16.04
MAINTAINER Shaun McCloud<git@smccloud.com>
LABEL version="v0.11.0.0"

# Copy shell scripts
ADD run.sh /

# Run the bootstrap script
#RUN bash /bootstrap.sh
RUN apt-get update
RUN apt-get install -y wget bzip2 build-essential cmake pkg-config libboost-all-dev libssl-dev libzmq3-dev libunbound-dev libminiupnpc-dev libunwind8-dev liblzma-dev libreadline6-dev libldns-dev libexpat1-dev libgtest-dev doxygen graphviz
RUN sudo apt-get install libgtest-dev && cd /usr/src/gtest && sudo cmake . && sudo make && sudo mv libg* /usr/lib/
RUN wget -O /monero-linux-x64-v0.11.0.0.tar.bz2 https://downloads.getmonero.org/cli/monero-linux-x64-v0.11.0.0.tar.bz2
RUN tar xvf /monero-linux-x64-v0.11.0.0.tar.bz2
RUN rm -f /monero-linux-x64-v0.11.0.0.tar.bz2
RUN mkdir -p /monero-v0.11.0.0/blockchain

# Stop the container
STOPSIGNAL SIGTERM

# Expose the two ports needed for the Monero daemon
EXPOSE 18080
EXPOSE 18081

CMD ["/bin/bash", "/run.sh"]
