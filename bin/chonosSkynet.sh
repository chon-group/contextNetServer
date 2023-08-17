#! /bin/sh
SKYNET_HOME="/opt/contextNetServer"

while true
do
	echo "Starting ContexNetServer"
	ipv4=$(hostname -I | awk '{print $1}')
	if [[ $ipv4 =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
     		/usr/bin/java -jar $SKYNET_HOME/libs/OpenSplice/contextnet-2.7.jar "$ipv4" 5500 OpenSplice &
		pid=$!
		echo $pid
		sleep 600
		echo "Restarting ContextNet..."
		kill $pid
	else
	    echo "Isn't possible to get a IPv4. Restarting in 10 seconds..."
	    sleep 10
	    reboot
	fi
done
