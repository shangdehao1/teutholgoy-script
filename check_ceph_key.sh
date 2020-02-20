#!/bin/bash


printf "\n == shangdehaovm1 ==\n"
ssh shangdehaovm1 "apt-key list | grep Ceph"
printf "\n == shangdehaovm2 ==\n"
ssh shangdehaovm2 "apt-key list | grep Ceph"
printf "\n == shangdehaovm3 ==\n"
ssh shangdehaovm3 "apt-key list | grep Ceph"
printf "\n == shangdehaovm4 ==\n"
ssh shangdehaovm4 "apt-key list | grep Ceph"
printf "\n == shangdehaovm5 ==\n"
ssh shangdehaovm5 "apt-key list | grep Ceph"
printf "\n == sdh2m1 ==\n"
ssh sdh2vm1 "apt-key list | grep Ceph"
printf "\n == sdh2vm2 ==\n"
ssh sdh2vm2 "apt-key list | grep Ceph"
printf "\n == sdh4vm1 ==\n"
ssh sdh4vm1 "apt-key list | grep Ceph"
printf "\n == sdh4vm2 ==\n"
ssh sdh4vm2 "apt-key list | grep Ceph"

