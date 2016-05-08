# ansible-jenkins

A set of docker images and scripts to set up a viable local deve env using Ansible and Packer bootstrapped by Jenkins to create a local (as on my laptop) CI environment.

## Image ordering:


|image name |installed|notes|
|:---|:---|:---|
|centos:latest|latest centos image|
|avastmick/jenkins-base|jenkins|This is a straight rip of the official Jenkins latest, but on Centos|
|avastmick/ansible-packer| Ansible and Packer|Anisble via yum, Packer binary download|


## Branches

1. master will be base on Ubuntu images
2. centos-rhel is as expected.
