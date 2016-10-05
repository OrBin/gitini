#! /bin/bash

sudo -v
echo "Enter Full Name : "
read fname
echo "Enter Email Address : "
read eadd
sudo mv licenses /usr/bin/
sudo mv gitini /usr/bin/
sudo echo $fname >> /usr/bin/gitini/cfg.txt
sudo echo $eadd >> /usr/bin/gitini/cfg.txt
sudo chmod +x gitini.sh
sudo mv gitini.sh /usr/bin/
sudo mv /usr/bin/gitini.sh /usr/bin/gitini
rm LICENSE.md
rm README.md
rm -- "$0"