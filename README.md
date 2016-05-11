# ansible-jenkins

A set of docker images and scripts to set up a viable local build environment using Ansible, Vagrant and Packer bootstrapped by Jenkins as a front-end to create a local (as on my laptop) CI environment.

This is not the same a the development environments derived from [``avastmick/development-base``](https://hub.docker.com/r/avastmick/development-base/).

## image ordering:


|image name |installed|notes|
|:---|:---|:---|
|``ubuntu:xenial``|Ubuntu 16.04|Base image
|``avastmick/development-base``|standard tools||
|``avastmick/ansible-jenkins:base``|jenkins, java|Uses the latest jenkins-ci repo; add in Java open-sdk|
|``avastmick/ansible-packer``| Ansible, Vagrant and Packer|Anisble via pip install, Packer binary download, Vagrant via apt|

## branches

1. ``master`` will be base on Ubuntu images
2. ``alpine`` will using Alpine to reduce heft
