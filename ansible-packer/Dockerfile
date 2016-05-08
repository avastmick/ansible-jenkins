FROM jenkins-base

MAINTAINER avastmick <avastmick.outlook.com>

WORKDIR /usr/local/repos

RUN apt-get update
RUN apt-get install --no-install-recommends -y wget unzip  python-pip python-dev python-setuptools make asciidoc git python-setuptools python2-devel

RUN

RUN apt-get install -y ansible

RUN curl -sf -O https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip && \
    unzip packer_0.10.0_linux_amd64.zip -d /usr/bin


    pt-get update && \
        apt-get install --no-install-recommends -y build-essential python openssl ca-certificates libssl-dev uuid-dev curl git sudo file && \
        apt-get clean
