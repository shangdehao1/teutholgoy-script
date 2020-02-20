#!/bin/bash

host=$1 
printf "log to ${host}\n"
ssh -q $1 < ping.sh 

