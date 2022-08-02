#! /bin/sh

echo "Configurando o Ambiente........................................"
LOCAL=`pwd`
OPENSPLICEGit='/OpenSplice/HDE'
OPENSPLICELOCAL='/opt/OpenSplice'

# Intalando Dependências do Java JDK 8 (somente para debian 10)
cat dependences/debian10-packages.tar.gz/* > /tmp/debian10-packages.tar.gz
tar zxvf /tmp/debian10-packages.tar.gz -C /tmp/
mv /tmp/debian10-dpkgs/* /var/cache/apt/archives/
apt install /var/cache/apt/archives/adoptium-ca-certificates_1.0.0-1_all.deb 
apt install /var/cache/apt/archives/temurin-8-jdk_8.0.332.0.0+9-1_amd64.deb


echo "Criando diretório no /opt para o OpenSplice..................."
mkdir -p $OPENSPLICELOCAL

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






