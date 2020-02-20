#!/bin/bash


printf "adjust slave nodes time with ntp server....\n"

ssh plana300.shangdehao.com "ntpdate 192.168.4.201"
ssh plana301.shangdehao.com "ntpdate 192.168.4.201"
ssh plana302.shangdehao.com "ntpdate 192.168.4.201"
ssh plana303.shangdehao.com "ntpdate 192.168.4.201"
ssh plana304.shangdehao.com "ntpdate 192.168.4.201"
ssh plana305.shangdehao.com "ntpdate 192.168.4.201"
ssh plana306.shangdehao.com "ntpdate 192.168.4.201"
ssh plana307.shangdehao.com "ntpdate 192.168.4.201"
ssh plana308.shangdehao.com "ntpdate 192.168.4.201"
ssh plana309.shangdehao.com "ntpdate 192.168.4.201"


printf "check slave node time... \n"

ssh plana300.shangdehao.com "timedatectl"
ssh plana301.shangdehao.com "timedatectl"
ssh plana302.shangdehao.com "timedatectl"
ssh plana303.shangdehao.com "timedatectl"
ssh plana304.shangdehao.com "timedatectl"
ssh plana305.shangdehao.com "timedatectl"
ssh plana306.shangdehao.com "timedatectl"
ssh plana307.shangdehao.com "timedatectl"
ssh plana308.shangdehao.com "timedatectl"
ssh plana309.shangdehao.com "timedatectl"

