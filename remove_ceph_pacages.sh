#!/bin/bash

printf "\n remove ceph package on remote machine [ubuntu@$1]\n\n"

ssh ubuntu@$1 "sudo apt-get -y remove ceph*; sudo apt-get -y remove cephfs*; sudo apt-get -y remove python3-ceph*"

exit

printf "\ncheck plana300\n"
ssh ubuntu@plana300.shangdehao.com "sudo apt-get remove ceph*; sudo apt-get remove cephfs*; sudo apt-get remove python3-ceph*"

printf "\ncheck plana301\n"
ssh ubuntu@plana301.shangdehao.com "sudo apt-get remove ceph*; sudo apt-get remove cephfs*; sudo apt-get remove python3-ceph*"

printf "\ncheck plana302\n"
ssh ubuntu@plana302.shangdehao.com "sudo apt-get remove ceph*; sudo apt-get remove cephfs*; sudo apt-get remove python3-ceph*"

printf "\ncheck plana303\n"
ssh ubuntu@plana303.shangdehao.com "sudo apt-get remove ceph*; sudo apt-get remove cephfs*; sudo apt-get remove python3-ceph*"

printf "\ncheck plana304\n"
ssh ubuntu@plana304.shangdehao.com "sudo apt-get remove ceph*; sudo apt-get remove cephfs*; sudo apt-get remove python3-ceph*"

printf "\ncheck plana305\n"
ssh ubuntu@plana305.shangdehao.com "sudo apt-get remove ceph*; sudo apt-get remove cephfs*; sudo apt-get remove python3-ceph*"

printf "\ncheck plana306\n"
ssh ubuntu@plana306.shangdehao.com "sudo apt-get remove ceph*; sudo apt-get remove cephfs*; sudo apt-get remove python3-ceph*"

printf "\ncheck plana307\n"
ssh ubuntu@plana307.shangdehao.com "sudo apt-get remove ceph*; sudo apt-get remove cephfs*; sudo apt-get remove python3-ceph*"

printf "\ncheck plana308\n"
ssh ubuntu@plana308.shangdehao.com "sudo apt-get remove ceph*; sudo apt-get remove cephfs*; sudo apt-get remove python3-ceph*"
