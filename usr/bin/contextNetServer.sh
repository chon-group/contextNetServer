#! /bin/sh
DEFAULT_PORT=5500
JAVA_8="autodiscover"

echo "Loading ENV"
OSPL_HOME=/opt/group.chon/contextnet/libs/OpenSplice/HDE/x86_64.linux
PATH=$OSPL_HOME/bin:$PATH
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$OSPL_HOME/lib
CPATH=$OSPL_HOME/include:$OSPL_HOME/include/sys:${CPATH:=}
OSPL_URI=file://$OSPL_HOME/etc/config/ospl.xml
export OSPL_HOME PATH LD_LIBRARY_PATH CPATH OSPL_TMPL_PATH OSPL_URI

echo "Searching for Java 8..."
if [ "$JAVA_8" = "autodiscover" ]; then
        if [ -x "/usr/lib/jvm/temurin-8-jre-amd64/bin/java" ]; then
                JAVA_8="/usr/lib/jvm/temurin-8-jre-amd64/bin/java"
        elif [ -x "/usr/lib/jvm/java-8-openjdk-amd64/bin/java" ]; then
                JAVA_8="/usr/lib/jvm/java-8-openjdk-amd64/bin/java"
        else
                echo "No JAVA 8 found."
                exit 1
        fi
fi

echo "IP Address: $(/usr/bin/hostname -I)"

echo -n "Starting ContexNetServer... "
ipv4=$(/usr/bin/hostname -I | /usr/bin/awk '{print $1}')
if [ -n $ipv4 ]; then
       $JAVA_8 -jar /opt/group.chon/contextnet/libs/OpenSplice/contextnet.jar $ipv4 $DEFAULT_PORT OpenSplice
else
        echo "Isn't possible to get a IPv4..."
        exit 1
fi