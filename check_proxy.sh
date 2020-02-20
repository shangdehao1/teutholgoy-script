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



printf "\n\n=====>>>> check root proxy \n\n"
execute_command "cat /root/.bashrc | grep child-prc;"

printf "\n\n=====>>>> check ubuntu proxy \n\n"
execute_command "cat /home/ubuntu/.bashrc | grep child-prc;"


printf "\n\n=====>>>> check git proxy \n\n"
execute_command "cat /home/ubuntu/.gitconfig | grep child-prc;"


printf "\n\n=====>>>> check wget proxy \n\n"
execute_command "cat /etc/wgetrc | grep child-prc;"

printf "\n\n=====>>>> check environment proxy \n\n"
execute_command "cat /etc/environment | grep child-prc;"
