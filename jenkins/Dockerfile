FROM ubuntu:xenial

MAINTAINER avastmick <avastmick.outlook.com>

# This is the local Jenkins install that will act as a base
WORKDIR /usr/local/repos

RUN apt-get update && \
    apt-get install --no-install-recommends -y wget curl git sudo file default-jdk && \
    apt-get clean

# Install Jenkins
RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get update && \
    apt-get install --no-install-recommends -y jenkins

# for main web interface:
EXPOSE 8080
# for development instance
EXPOSE 9090

# will be used by attached slave agents:
EXPOSE 50000
# Unlikely this will be used:
EXPOSE 50001
