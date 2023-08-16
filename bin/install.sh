#! /bin/sh
SKYNET_HOME="/opt/contextNetServer"

apt update; apt install wget apt-transport-https gnupg -y
wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add -
echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list
apt update; apt install temurin-8-jre -y

# Installing OpenSplice
ln -s $SKYNET_HOME/libs/OpenSplice /opt/OpenSplice
ln -s $SKYNET_HOME/libs/OpenSplice/opensplice.sh /etc/profile.d/
ln -s $SKYNET_HOME/bin/chonosSkynet.sh /usr/bin/chonosSkynet

# Modify the getty service file to enable autologin for root
cp /lib/systemd/system/getty@.service /etc/systemd/system/getty@.service.backup
sed -i 's|ExecStart=-/sbin/agetty |ExecStart=-/sbin/agetty --autologin root |' /lib/systemd/system/getty@.service
sed -i 's|^ExecStart=-/sbin/agetty |ExecStartPre=/bin/login -f root\nExecStart=-/sbin/agetty |' /lib/systemd/system/getty@.service

echo "clear" >> /root/.profile
echo 'echo "Waiting for DHCP Configuration"' >> /root/.profile
echo "dhclient" >> /root/.profile
echo 'echo "IP Address: $(hostname -I)' >> /root/.profile

reboot
