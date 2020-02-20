#!/bin/bash

printf "\n\n\n\n=================>>>>> ping plana300\n"
ping 192.168.2.21 -c 5 -q | grep "5 received"

printf "\n=================>>>>> ping plana301\n"
ping 192.168.2.22 -c 5 -q | grep "5 received"

printf "\n=================>>>>> ping plana302\n"
ping  192.168.2.23 -c 5 -q | grep "5 received"

printf "\n=================>>>>> ping plana303\n"
ping 192.168.4.21 -c 5 -q | grep "5 received"

printf "\n=================>>>>> ping plana304\n"
ping 192.168.4.22 -c 5 -q | grep "5 received"

printf "\n=================>>>>> ping plana305\n"
ping 192.168.5.21 -c 5 -q | grep "5 received"

printf "\n=================>>>>> ping plana306\n"
ping 192.168.5.22 -c 5 -q | grep "5 received"

printf "\n=================>>>>> ping plana307\n"
ping 192.168.5.23 -c 5 -q | grep "5 received"

printf "\n=================>>>>> ping plana308\n"
ping 192.168.5.24 -c 5 -q | grep "5 received"

printf "\n=================>>>>> ping plana309\n"
ping 192.168.5.25 -c 5 -q | grep "5 received"


printf "\n=================>>>>> ping ntp server \n"
ping 192.168.4.201 -c 5 -q | grep "5 received"
