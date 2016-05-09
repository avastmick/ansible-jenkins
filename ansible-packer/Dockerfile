FROM jenkins-base

MAINTAINER avastmick <avastmick.outlook.com>

WORKDIR /usr/local/repos

RUN yum update -y
RUN yum install -y wget epel-release unzip openssl ca-certificates libssl-dev uuid-dev python-pip python-dev python-setuptools rpm-build make asciidoc git python-setuptools python2-devel

RUN yum install -y ansible

RUN curl -sf -O https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip && \
    unzip packer_0.10.0_linux_amd64.zip -d /usr/bin
