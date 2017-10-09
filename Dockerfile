FROM ubuntu:16.04
MAINTAINER Shaun McCloud<git@smccloud.com>

# Copy shell scripts
ADD bootstrap.sh /
ADD run.sh /

# Run the bootstrap script
RUN bash /bootstrap.sh

# Stop the container
STOPSIGNAL SIGTERM

# Expose the two ports needed for the Monero daemon
EXPOSE 18080
EXPOSE 18081

CMD ["bash", "/run.sh"]