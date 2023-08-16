#! /bin/sh
SKYNET_HOME="/opt/contextNetServer"

# Intalação do Java JDK 8
#ln -s $SKYNET_HOME/deps/debian10-dpkgs/*.deb /var/cache/apt/archives/
#apt install /var/cache/apt/archives/adoptium-ca-certificates_1.0.0-1_all.deb -y
#apt install /var/cache/apt/archives/temurin-8-jdk_8.0.332.0.0+9-1_amd64.deb -y

#Instalação do OpenSplice
ln -s $SKYNET_HOME/libs/OpenSplice /opt/OpenSplice
ln -s $SKYNET_HOME/libs/OpenSplice/opensplice.sh /etc/profile.d/
ln -s $SKYNET_HOME/bin/chonosSkynet.sh /usr/bin/chonosSkynet

echo "Reboot is mandatory! - Please restart the system"
