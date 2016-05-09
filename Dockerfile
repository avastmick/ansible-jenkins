FROM avastmick/ansible-jenkins:base

MAINTAINER avastmick <avastmick.outlook.com>

# This creates a full Build machine that will:
#   - be based on Ubuntu latest
#   - have Jenkins 2.+ installed (from avastmick/jenkins-base)
#   - have Ansible installed
#   - have Vagrant installed to manage virtual machine images
#   - have Packer installed to create and maintain VM images from ISOs
#   - have Git installed
#   - have any other tools required for automated builds

# Install Ansible (via pip)
RUN apt-get update 
RUN pip install --upgrade setuptools
RUN pip install ansible

# Install Packer
RUN curl -sf -O https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip && \
    unzip packer_0.10.0_linux_amd64.zip -d /usr/bin

# Install Vagrant
RUN apt-get install --no-install-recommends -y vagrant
