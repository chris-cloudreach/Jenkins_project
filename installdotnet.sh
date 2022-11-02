#!/bin/bash
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo apt install dotnet-sdk-6.0 -y
sudo apt install apt-transport-https
sudo apt update
sudo apt install dotnet-runtime-6.0
sudo apt remove dotnet* -y
sudo apt remove aspnetcore* -y
sudo apt remove netstandard* -y
sudo apt update
sudo su
# touch /etc/apt/preferences.d/99microsoft-dotnet
echo 'Package: *' > /etc/apt/preferences.d/99microsoft-dotnet
echo 'Pin: origin "packages.microsoft.com"' >> /etc/apt/preferences.d/99microsoft-dotnet
echo 'Pin-Priority: 1001' >> /etc/apt/preferences.d/99microsoft-dotnet
apt -y install dotnet6
apt install docker.io -y
apt install awscli -y
curl -o AWSApp2Container-installer-linux.tar.gz https://app2container-release-us-east-1.s3.us-east-1.amazonaws.com/latest/linux/AWSApp2Container-installer-linux.tar.gz
sudo tar xvf AWSApp2Container-installer-linux.tar.gz
./install.sh -y
