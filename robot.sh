#!/bin/sh
# Pedro Almeida - pedroalmeida173@gmail.com

port=22

user=
pass=
network=""
ip=1

while [ $ip -le 254 ]
do
	sshpass -p $pass ssh -p $port -oConnectTimeout=10 -oStrictHostKeyChecking=no $user@$network$ip "trigger_url | sh"&
	ip=$((ip+1))
done

