# ansible-jenkins

A set of docker images and scripts to set up a viable local deve env using Ansible and Packer bootstrapped by Jenkins to create a local (as on my laptop) CI environment.

## Image ordering:


|image name |installed|notes|
|:---|:---|:---|
|ubuntu:xenial|Ubuntu 16.04|Base image
|avastmick/development-base|standard tool||
|avastmick/jenkins-base|jenkins|This is a straight rip of the official Jenkins latest, but on my development base, plus Java|
|avastmick/ansible-packer| Ansible and Packer|Anisble via apt, Packer binary download|


## Branches

1. master will be base on Ubuntu images
