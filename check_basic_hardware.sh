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
		printf "====>>>> %s : " $host
		ssh $host $1
		# printf "\n"
	done
}

execute_command1() {
	for index in {0..9}
	do
		host=${hosts[$index]}
		printf "====>>>> %s : \n" $host
		ssh $host $1
		printf "\n"
	done
}

printf "\n============>>>>>>>>>>>>>>>> check eth1 route <<<<<<<<<<<<<<<<====================\n"
execute_command1 "route -n | grep eth1;" 
printf "\n============>>>>>>>>>>>>>>>> check eth0 route <<<<<<<<<<<<<<<<====================\n"
execute_command1 "route -n | grep eth0;" 


printf "\n============>>>>>>>>>>>>>>>> check eth0 MTU <<<<<<<<<<<<<<<<====================\n"
execute_command "ifconfig | grep eth0;"
printf "\n============>>>>>>>>>>>>>>>> check eth1 MTU <<<<<<<<<<<<<<<<====================\n"
execute_command "ifconfig | grep eth1;"

printf "\n============>>>>>>>>>>>>>>>> check disk : /dev/sda  <<<<<<<<<<<<<<<<====================\n"
execute_command "fdisk -l | grep /dev/sda:; " 

printf "\n============>>>>>>>>>>>>>>>> check disk : /dev/vda  <<<<<<<<<<<<<<<<====================\n"
execute_command "fdisk -l | grep /dev/vda:; " 

printf "\n============>>>>>>>>>>>>>>>> check filesystem : /  <<<<<<<<<<<<<<<<====================\n"
execute_command "df -h | grep /dev/sda3;" 

printf "\n============>>>>>>>>>>>>>>>> check filesystem : /mnt/data  <<<<<<<<<<<<<<<<====================\n"
execute_command "df -h | grep /mnt/data;" 

printf "\n============>>>>>>>>>>>>>>>> check memory size <<<<<<<<<<<<<<<<====================\n"
printf "                                                 total        used        free      shared  buff/cache   available\n"
execute_command "free -h | grep Mem;" 

printf "\n============>>>>>>>>>>>>>>>> check CPU number  <<<<<<<<<<<<<<<<====================\n"
execute_command "printf \"cpu number : \"; cat /proc/cpuinfo| grep \"physical id\"| sort| uniq| wc -l "


printf "\n============>>>>>>>>>>>>>>>> check KVM kernel module  <<<<<<<<<<<<<<<<====================\n"
execute_command "printf \"check kvm module : \"; lsmod | grep \"1 kvm_intel\""

printf "\n============>>>>>>>>>>>>>>>> check KVM acceleration  <<<<<<<<<<<<<<<<====================\n"
execute_command "printf \"check KVM acceleration : \"; kvm-ok"


printf "\n============>>>>>>>>>>>>>>>> check user : ubuntu  <<<<<<<<<<<<<<<<====================\n"
execute_command "cat /etc/passwd | grep ubuntu;"

printf "\n============>>>>>>>>>>>>>>>> check user : ubuntu access <<<<<<<<<<<<<<<<====================\n"
execute_command "cat /etc/sudoers | grep ubuntu; "


printf "\n============>>>>>>>>>>>>>>>> check all user in kvm group <<<<<<<<<<<<<<<<====================\n"
execute_command "grep -r kvm /etc/group; "



printf "\n============>>>>>>>>>>>>>>>> check user : sshd configure <<<<<<<<<<<<<<<<====================\n"
execute_command " cat /etc/ssh/sshd_config | grep \"PermitRootLogin yes\"; "
execute_command " cat /etc/ssh/sshd_config | grep \"PasswordAuthentication yes\"; "


exit
