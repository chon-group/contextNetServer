#! /bin/sh
SKYNET_HOME="/opt/chonos-skynet"

while true
do
	echo "Iniciando contexNet"
	/usr/bin/java -jar $SKYNET_HOME/libs/contextNet/contextnet-2.7.jar 127.0.0.1 5500 OpenSplice &
	pid=$!
	echo $pid
	sleep 1800
	echo "Encerrando contexNet"
	kill $pid
done
