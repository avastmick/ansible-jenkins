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

# Start the daemon
RUN systemctl start jenkins.service
RUN chkconfig jenkins on

# Punch firewall holes
RUN firewall-cmd --zone=public --add-port=8080/tcp --permanent && \
    firewall-cmd --zone=public --add-service=http --permanent && \
    firewall-cmd --reload
