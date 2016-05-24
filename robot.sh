#!/bin/sh
# Pedro Almeida - pedroalmeida173@gmail.com

port=22

user=cliente
pass=radio@cliente
network="172.16.17."

ip=1
ipfinal = 254

while [ $ip -le $ipfinal ]
do
	sshpass -p $pass ssh -p $port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$ip "trigger_url https://raw.githubusercontent.com/PedroDeAlmeida/ubnt_robot/master/script1.sh | sh"&
	ip=$((ip+1))
done

