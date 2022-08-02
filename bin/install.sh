#! /bin/sh
SKYNET_HOME="/opt/chonos-skynet"

# Intalação do Java JDK 8
ln -s $SKYNET_HOME/deps/debian10-dpkgs/*.deb /var/cache/apt/archives/
apt install /var/cache/apt/archives/adoptium-ca-certificates_1.0.0-1_all.deb -y
apt install /var/cache/apt/archives/temurin-8-jdk_8.0.332.0.0+9-1_amd64.deb -y


echo "Adicionando Link Simbólico para o OpenSplice................."
ln -s $LOCAL$OPENSPLICEGit $OPENSPLICELOCAL'/HDE'

echo "Alterando arquivo ospl.xml para o distribuído pela ContextNet"
mv /opt/OpenSplice/HDE/x86_64.linux/etc/config/ospl.xml /opt/OpenSplice/HDE/x86_64.linux/etc/config/ospl.xml.OLD
cp dependences/ospl.xml /opt/OpenSplice/HDE/x86_64.linux/etc/config/ospl.xml

echo "Copiando variáveis de ambiente ............................."
cp dependences/opensplice.sh /etc/profile.d/opensplice.sh

echo "Habilitando script de inicialização ......................."
ln -s /opt/Robotic-agentCloud/OpenSplice/contextNet.sh /usr/bin

echo "Reinicie o sistema"

echo ""

echo "após reiniciar execute: contextNet.sh"
