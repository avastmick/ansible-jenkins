FROM jenkins:2.0

MAINTAINER avastmick <avastmick.outlook.com>

# This is the local Jenkins install that will act as a base

# for main web interface:
EXPOSE 8080
# for development instance
EXPOSE 9090

# will be used by attached slave agents:
EXPOSE 50000
# Unlikely this will be used:
EXPOSE 50001

# Copy over the bundle of plugins so we can skip the configure
# COPY active.txt /usr/local/bin/plugins.sh
# RUN /usr/local/bin/plugins.sh/plugins.sh active.txt
