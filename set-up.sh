#!/bin/bash

###########################################################
#
# This script sets up the genesis-machine - which is a means
# of managing the automated jobs
# - Pre-requisites:
# 1. Installed Git
# 2. Installed GitHub Enterprise certificate
#
# - This script runs the following:
# 1. Install Docker
# 2. Build docker images
# 3. Run docker (starting and configuring containers)
# 4. Drink beer
#
###########################################################

# 0. Update repositories and packages
sudo yum update -y

# 1. Install Docker
command -v docker >/dev/null && { echo docker installed;  } || { echo "docker not found, installing."; sudo curl -sSL https://get.docker.com/ | sh; sudo chkconfig docker on; sudo service docker start;};

# 2. Run build docker images || import existing tar.gz archive
./build-docker-image

# 3. Run docker
sudo ./run-docker

# 4. Drink beer
echo Mmmmm, beer!
