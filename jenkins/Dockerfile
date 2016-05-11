FROM avastmick/development-base

MAINTAINER avastmick <avastmick.outlook.com>

# This is the local Jenkins install that will act as a base
WORKDIR /usr/local/repos

# Jenkins home directory is a volume, so configuration and build history
# can be persisted and survive image upgrades
VOLUME /var/lib/jenkins

# Install Jenkins - TODO ensure version is 2.x+
RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - && \
    sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list' && \
    apt-get update && \
    apt-get install --no-install-recommends -y default-jdk jenkins && \
    rm -rf /var/lib/apt/lists/*

# for main web interface:
EXPOSE 8080
# for development instance
EXPOSE 9090

# will be used by attached slave agents:
EXPOSE 50000
# Unlikely this will be used:
EXPOSE 50001
