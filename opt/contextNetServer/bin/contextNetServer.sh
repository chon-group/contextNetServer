#! /bin/sh
echo "Carregando variaveis de ambiente"
OSPL_HOME=/opt/OpenSplice/HDE/x86_64.linux
PATH=$OSPL_HOME/bin:$PATH
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$OSPL_HOME/lib
CPATH=$OSPL_HOME/include:$OSPL_HOME/include/sys:${CPATH:=}
OSPL_URI=file://$OSPL_HOME/etc/config/ospl.xml
export OSPL_HOME PATH LD_LIBRARY_PATH CPATH OSPL_TMPL_PATH OSPL_URI


SKYNET_HOME="/opt/contextNetServer"
#echo "Waiting for DHCP Configuration"
#dhclient 2>>/dev/null
echo "IP Address: $(/usr/bin/hostname -I)"

echo -n "Starting ContexNetServer... "
ipv4=$(/usr/bin/hostname -I | /usr/bin/awk '{print $1}')
if [ -n $ipv4 ]; then
        /usr/lib/jvm/temurin-8-jre-amd64/bin/java -jar /opt/contextNetServer/libs/OpenSplice/contextnet-2.7.jar $ipv4 5500 OpenSplice
#       /usr/bin/java -Djava.library.path=/root/jars/ -jar /opt/contextNetServer/libs/OpenSplice/contextnet-2.7.jar $ipv4 5500 OpenSplice
else
        echo "Isn't possible to get a IPv4..."
fi