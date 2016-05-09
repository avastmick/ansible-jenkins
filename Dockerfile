FROM avastmick/jenkins-base

MAINTAINER avastmick <avastmick.outlook.com>

# This creates a full Build machine that will:
#   - be based on Ubuntu latest
#   - have Jenkins 2.+ installed (from nzdf/jenkins-base)
#   - have Ansible installed
#   - have Vagrant installed to manage virtual machine images
#   - have Packer installed to create and maintain VM images from ISOs
#   - have Git installed
#   - have any other tools required for automated builds
