FROM centos:latest

MAINTAINER avastmick <avastmick.outlook.com>

WORKDIR /usr/local/repos

RUN yum update -y
RUN yum install -y wget epel-release unzip openssl ca-certificates libssl-dev uuid-dev python-pip python-dev python-setuptools rpm-build make asciidoc git python-setuptools python2-devel

RUN yum install -y ansible

RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
RUN rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
RUN yum install -y java jenkins

RUN curl -sf -O https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip && \
    unzip packer_0.10.0_linux_amd64.zip -d /usr/bin

# Should be set up now with Jenkins, Ansible and Packer installed. Now configure it

# Jenkins configuration ripped off from  https://github.com/jenkinsci/docker/blob/5a51d0a519cb6605280adb8719f0e050ea69bac6/Dockerfile

ENV JENKINS_HOME /var/jenkins_home
ENV JENKINS_SLAVE_AGENT_PORT 50000

ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000

# Jenkins home directory is a volume, so configuration and build history
# can be persisted and survive image upgrades
VOLUME /var/jenkins_home

# `/usr/share/jenkins/ref/` contains all reference configuration we want
# to set on a fresh new installation. Use it to bundle additional plugins
# or config file with your custom jenkins Docker image.
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d

ENV TINI_SHA 066ad710107dc7ee05d3aa6e4974f01dc98f3888

# Use tini as subreaper in Docker container to adopt zombie processes
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v0.5.0/tini-static -o /bin/tini && chmod +x /bin/tini \
  && echo "$TINI_SHA  /bin/tini" | sha1sum -c -

COPY init.groovy /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy

# for main web interface:
EXPOSE 8080

# will be used by attached slave agents:
EXPOSE 50000

ENV COPY_REFERENCE_FILE_LOG $JENKINS_HOME/copy_reference_file.log

USER ${user}

COPY jenkins.sh /usr/local/bin/jenkins.sh
ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]

# from a derived Dockerfile, can use `RUN plugins.sh active.txt` to setup /usr/share/jenkins/ref/plugins from a support bundle
COPY plugins.sh /usr/local/bin/plugins.sh
