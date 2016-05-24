echo "*** Iniciando ***"
rm /tmp/tempconfig

echo "*** Apagando linha de configuracoes do discovery ***"
grep -v "discovery" /tmp/system.cfg > /tmp/tempconfig

echo "*** Inserindo nova configuracao ***"
echo "discovery.cdp.status=disabled" >> /tmp/tempconfig
echo "discovery.status=disabled" >> /tmp/tempconfig

echo "*** Sanvando na Flash ***"
cfgmtd -w -p /etc/
save

echo "*** Reiniciando ***"
reboot