#!/bin/sh
# Pedro Almeida - pedroalmeida173@gmail.com

opcao='enabled' 

echo "*** Iniciando ***"
rm /tmp/tempconfig

echo "*** Apagando linha de configuracoes do discovery ***"
grep -v "discovery" /tmp/system.cfg > /tmp/tempconfig

echo "*** Inserindo nova configuracao ***"
echo "discovery.cdp.status=$opcao" >> /tmp/tempconfig
echo "discovery.status=$opcao" >> /tmp/tempconfig

echo "*** Sanvando na Flash ***"
cfgmtd -w -p /etc/
save

echo "*** Reiniciando ***"
reboot