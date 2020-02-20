#!/bin/bash


hosts[0]='plana300.shangdehao.com'
hosts[1]='plana301.shangdehao.com'
hosts[2]='plana302.shangdehao.com'
hosts[3]='plana303.shangdehao.com'
hosts[4]='plana304.shangdehao.com'
hosts[5]='plana305.shangdehao.com'
hosts[6]='plana306.shangdehao.com'
hosts[7]='plana307.shangdehao.com'
hosts[8]='plana308.shangdehao.com'
hosts[9]='plana309.shangdehao.com'

execute_command() {

	for index in {0..9}
	do
		host=${hosts[$index]}
		printf "====>>>> %s\n" $host
		ssh $host $1
		printf "\n"
	done
}



execute_command "
		systemctl status ssh | grep Active;
		cat /etc/ssh/sshd_config | grep \"PermitRootLogin yes\";
		cat /etc/ssh/sshd_config | grep \"PasswordAuthentication yes\";
		"


exit
