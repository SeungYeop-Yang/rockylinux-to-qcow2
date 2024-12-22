#!/usr/bin/env sh
./create_locald.sh
cd packer
rm -rf output
PACKER_LOG=0 packer init rockylinux.pkr.hcl
PACKER_LOG=1 packer build rockylinux.pkr.hcl
