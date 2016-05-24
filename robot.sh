#!/bin/sh
# Pedro Almeida - pedroalmeida173@gmail.com

port=22
network="172.16.17."
ipfinal=254
espera=30

#-----------------------------------------------------
user=marciel
pass=md0986
ip=1

while [ $ip -le $ipfinal ]
do
        sshpass -p $pass ssh -p $port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$ip "trigger_url https://raw.githubusercontent.com/PedroDeAlmeida/ubnt_robot/master/script1.sh | sh"&
        ip=$((ip+1))
done

sleep $espera
echo '' > /home/veloce/.ssh/known_hosts
#-----------------------------------------------------

#-----------------------------------------------------
user=nsp
pass=netmpp
ip=1

while [ $ip -le $ipfinal ]
do
        sshpass -p $pass ssh -p $port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$ip "trigger_url https://raw.githubusercontent.com/PedroDeAlmeida/ubnt_robot/master/script1.sh | sh"&
        ip=$((ip+1))
done

sleep $espera
echo '' > /home/veloce/.ssh/known_hosts
#-----------------------------------------------------

#-----------------------------------------------------
user=vlc
pass=vlcpp10
ip=1

while [ $ip -le $ipfinal ]
do
        sshpass -p $pass ssh -p $port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$ip "trigger_url https://raw.githubusercontent.com/PedroDeAlmeida/ubnt_robot/master/script1.sh | sh"&
        ip=$((ip+1))
done

sleep $espera
echo '' > /home/veloce/.ssh/known_hosts
#-----------------------------------------------------

#-----------------------------------------------------
user=internet
pass=radio@cliente
ip=1

while [ $ip -le $ipfinal ]
do
        sshpass -p $pass ssh -p $port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$ip "trigger_url https://raw.githubusercontent.com/PedroDeAlmeida/ubnt_robot/master/script1.sh | sh"&
        ip=$((ip+1))
done

sleep $espera
echo '' > /home/veloce/.ssh/known_hosts
#-----------------------------------------------------