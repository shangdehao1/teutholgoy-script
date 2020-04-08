#!/bin/bash


printf "\n == plana300 ==\n"
ssh plana300.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
#ssh shangdehaovm1 "wget https://1.chacra.ceph.com/r/ceph/nautilus/8d4bb6dcd1a073d57929035d2f4d81456910b227/ubuntu/bionic/flavors/default/ | grep OK"

printf "\n == plana301 ==\n"
ssh plana301.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
#ssh shangdehaovm2 "wget https://1.chacra.ceph.com/r/ceph/nautilus/8d4bb6dcd1a073d57929035d2f4d81456910b227/ubuntu/bionic/flavors/default/ | grep OK"

printf "\n == plana302 ==\n"
ssh plana302.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
#ssh shangdehaovm3 "wget https://1.chacra.ceph.com/r/ceph/nautilus/8d4bb6dcd1a073d57929035d2f4d81456910b227/ubuntu/bionic/flavors/default/ | grep OK"

printf "\n == plana303 ==\n"
ssh plana303.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
#ssh shangdehaovm4 "wget https://1.chacra.ceph.com/r/ceph/nautilus/8d4bb6dcd1a073d57929035d2f4d81456910b227/ubuntu/bionic/flavors/default/ | grep OK"

printf "\n == plana304 ==\n"
ssh plana304.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
#ssh shangdehaovm5 "wget https://1.chacra.ceph.com/r/ceph/nautilus/8d4bb6dcd1a073d57929035d2f4d81456910b227/ubuntu/bionic/flavors/default/ | grep OK"

printf "\n == plana305 ==\n"
ssh plana305.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
#ssh sdh2vm1 "wget https://1.chacra.ceph.com/r/ceph/nautilus/8d4bb6dcd1a073d57929035d2f4d81456910b227/ubuntu/bionic/flavors/default/ | grep OK"

printf "\n == plana306 ==\n"
ssh plana306.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
#ssh sdh2vm2 "wget https://1.chacra.ceph.com/r/ceph/nautilus/8d4bb6dcd1a073d57929035d2f4d81456910b227/ubuntu/bionic/flavors/default/ | grep OK"

printf "\n == plana307 ==\n"
ssh plana307.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
#ssh sdh4vm1 "wget https://1.chacra.ceph.com/r/ceph/nautilus/8d4bb6dcd1a073d57929035d2f4d81456910b227/ubuntu/bionic/flavors/default/ | grep OK"

printf "\n == plana308 ==\n"
ssh plana308.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
#ssh sdh4vm2 "wget https://1.chacra.ceph.com/r/ceph/nautilus/8d4bb6dcd1a073d57929035d2f4d81456910b227/ubuntu/bionic/flavors/default/ | grep OK"

printf "\n == plana309 ==\n"
ssh plana309.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"

printf "\n == ntp ==\n"
ssh ntp.shangdehao.com "wget www.baidu.com; wget www.google.com | grep OK"
