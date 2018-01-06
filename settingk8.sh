#!/bin/bash
# curl -sS https://raw.githubusercontent.com/albertoclarit/DevOps/master/settingk8.sh | bash


sudo apt-get install -y golang-1.9-go
wget https://github.com/kubernetes-incubator/cri-tools/archive/v1.0.0-alpha.0.zip
apt-get install -y unzip
unzip v1.0.0-alpha.0.zip -d xx

echo "export PATH=\"\$PATH:/usr/lib/go-1.9/bin\"" >> .profile
echo "export PATH=\"\$PATH:/root/xx/cri-tools-1.0.0-alpha.0/_output/bin\"" >> .profile
source ~/.profile
cd xx/cri-tools-1.0.0-alpha.0
make
cd ~




