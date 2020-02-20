#！/bin/bash

ssh -q shangdehaovm1 <<  remotessh
lsb_release -a >> /dev/null
ifconfig
remotessh
