#!/bin/bash




ssh localhost               "printf \"worker   : \"; date"
ssh plana300.shangdehao.com "printf \"plana300 : \"; date"
ssh plana301.shangdehao.com "printf \"plana301 : \"; date"
ssh plana302.shangdehao.com "printf \"plana302 : \"; date"
ssh plana303.shangdehao.com "printf \"plana303 : \"; date"
ssh plana304.shangdehao.com "printf \"plana304 : \"; date"
ssh plana305.shangdehao.com "printf \"plana305 : \"; date"
ssh plana306.shangdehao.com "printf \"plana306 : \"; date"
ssh plana307.shangdehao.com "printf \"plana307 : \"; date"
ssh plana308.shangdehao.com "printf \"plana308 : \"; date"
ssh plana309.shangdehao.com "printf \"plana309 : \"; date"
ssh ntp.shangdehao.com      "printf \"ntp      : \"; date"
ssh 10.239.48.148           "printf \"paddle   : \"; date"

#printf "\ncheck ntp status\n"
#ssh shangdehaovm1 "service ntp statusa | grep Active"
#ssh shangdehaovm2 "service ntp status | grep Active"
#ssh shangdehaovm3 "service ntp status | grep Active"
#ssh shangdehaovm4 "service ntp status | grep Active"
#ssh shangdehaovm5 "service ntp status | grep Active"
#ssh sdh2vm1 "service ntp status | grep Active"
#ssh sdh2vm2 "service ntp status | grep Active"
#ssh sdh4vm1 "service ntp status | grep Active"
#ssh sdh4vm2 "service ntp status | grep Active"
#
#
#printf "\ncheck apt-get-update\n"
#
#echo " == shangdehaovm1 =="
#ssh shangdehaovm1 "apt-get update"
#echo " == shangdehaovm2 =="
#ssh shangdehaovm2 "apt-get update"
#echo " == shangdehaovm3 =="
#ssh shangdehaovm3 "apt-get update"
#echo " == shangdehaovm4 =="
#ssh shangdehaovm4 "apt-get update"
#echo " == shangdehaovm5 =="
#ssh shangdehaovm5 "apt-get update"
#echo " == sdh2m1 =="
#ssh sdh2vm1 "apt-get update"
#echo " == sdh2vm2 =="
#ssh sdh2vm2 "apt-get update"
#echo " == sdh4vm1 =="
#ssh sdh4vm1 "apt-get update"
#echo " == sdh4vm2 =="
#ssh sdh4vm2 "apt-get update"
#
