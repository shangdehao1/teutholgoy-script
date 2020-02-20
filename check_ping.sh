#!/bin/bash


### vm -----> 10.239.48.148 yes
### 10.239.48.148 ----> vm  no



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
	hosts[10]='ntp.shangdehao.com'
	hosts[11]='worker.shangdehao.com'
	

execute_ping() {

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
	hosts[10]='ntp.shangdehao.com'
	hosts[11]='worker.shangdehao.com'
	hosts[12]='10.239.48.148'
       

	for index in {0..12}
	do
		host=${hosts[$index]}
		printf "====>>>> ping  %s\n" $host
		ping $host -c 3 -q | grep "3 received"
		#printf "\n"
	done
}

login() {
	printf "\n\n\n=============>>>>>>>>> login host %s <<<<<<<<<<=================== \n\n" $1
	ssh -q $1 << EOF
		$(typeset -f) 
		execute_ping 
EOF
}


for index in {0..11}
do 
	login ${hosts[$index]}
done
















