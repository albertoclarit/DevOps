#!/bin/bash
#curl -sS https://raw.githubusercontent.com/albertoclarit/DevOps/master/localebugfix.sh | bash
#should be run in root

locale-gen en_US.UTF-8
dpkg-reconfigure locales
echo "LANG=en_US.UTF-8" >>  /etc/default/locale
echo "LC_ALL=en_US.UTF-8" >>  /etc/default/locale

echo "LANG=en_US.UTF-8" >>  /etc/environment
echo "LC_ALL=en_US.UTF-8" >>  /etc/environment

echo "Please reboot"

