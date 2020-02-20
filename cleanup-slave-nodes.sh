#!/bin/bash


hosts[0]='ubuntu@plana300.shangdehao.com'
hosts[1]='ubuntu@plana301.shangdehao.com'
hosts[2]='ubuntu@plana302.shangdehao.com'
hosts[3]='ubuntu@plana303.shangdehao.com'
hosts[4]='ubuntu@plana304.shangdehao.com'
hosts[5]='ubuntu@plana305.shangdehao.com'
hosts[6]='ubuntu@plana306.shangdehao.com'
hosts[7]='ubuntu@plana307.shangdehao.com'
hosts[8]='ubuntu@plana308.shangdehao.com'
#hosts[9]='ubuntu@plana309.shangdehao.com'

execute_command() {

        for index in {0..8}
        do
                host=${hosts[$index]}
                printf "====>>>> %s\n" $host
                ssh $host $1
                printf "\n"
        done
}


printf "\n\n =====>>>>> cleanup ceph data \n"
execute_command "sudo rm -rf cephtest; \
		 sudo rm -rf /var/lib/ceph; \
		 sudo rm -rf /etc/ceph; \
		 sudo rm -rf /etc/apt/sources.list.d/ceph.list; \
		 sudo rm -rf /var/log/ceph; sudo mkdir -p /var/log/ceph; \
                 sudo rm -rf /etc/logrotate.d/ceph; \
                 sudo rm -rf /usr/share/ceph; 
		 sudo rm -rf /var/run/ceph"

printf "\n\n =====>>>>> cleanup ceph-daemon \n"
execute_command "sudo apt remove -y ceph* > /dev/null 2>&1;
		 sudo apt remove -y libceph* > /dev/null 2>&1;
		 sudo apt remove -y python3-ceph* > /dev/null 2>&1;"

printf "\n\n =====>>>>> check ceph-package\n"
execute_command "apt list --installed | grep ceph"

printf "\n\n =====>>>>> unlock all slave-node\n"
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana300
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana301
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana302
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana303
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana304
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana305
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana306
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana307
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana308
teuthology-lock --unlock --owner scheduled_teuthworker@ubuntu plana309

exit

printf "\n\n =====>>>>> check libguestfs-tools packages. \n"
printf " =====>>>>> Currently i manually do this works, and try to merge into ceph master branch...\n"
ssh ubuntu@plana300.shangdehao.com "apt list --installed | grep libguestfs-tools"
ssh ubuntu@plana301.shangdehao.com "apt list --installed | grep libguestfs-tools"
ssh ubuntu@plana302.shangdehao.com "apt list --installed | grep libguestfs-tools"
ssh ubuntu@plana303.shangdehao.com "apt list --installed | grep libguestfs-tools"
ssh ubuntu@plana304.shangdehao.com "apt list --installed | grep libguestfs-tools"
ssh ubuntu@plana305.shangdehao.com "apt list --installed | grep libguestfs-tools"
ssh ubuntu@plana306.shangdehao.com "apt list --installed | grep libguestfs-tools"
ssh ubuntu@plana307.shangdehao.com "apt list --installed | grep libguestfs-tools"
ssh ubuntu@plana308.shangdehao.com "apt list --installed | grep libguestfs-tools"



printf "\n\n =====>>>>> check qemu packages\n"
printf " =====>>>>> currently i mannually do this works, and try to merge into teuthology master branch...\n"
ssh ubuntu@plana300.shangdehao.com "apt list --installed | grep qemu*"
ssh ubuntu@plana301.shangdehao.com "apt list --installed | grep qemu*"
ssh ubuntu@plana302.shangdehao.com "apt list --installed | grep qemu*"
ssh ubuntu@plana303.shangdehao.com "apt list --installed | grep qemu*"
ssh ubuntu@plana304.shangdehao.com "apt list --installed | grep qemu*"
ssh ubuntu@plana305.shangdehao.com "apt list --installed | grep qemu*"
ssh ubuntu@plana306.shangdehao.com "apt list --installed | grep qemu*"
ssh ubuntu@plana307.shangdehao.com "apt list --installed | grep qemu*"
ssh ubuntu@plana308.shangdehao.com "apt list --installed | grep qemu*"


printf "\n\n =====>>>>> try to install  qemu packages\n"
ssh ubuntu@plana300.shangdehao.com "sudo apt-get -y install qemu-system"
ssh ubuntu@plana301.shangdehao.com "sudo apt-get -y install qemu-system"
ssh ubuntu@plana302.shangdehao.com "sudo apt-get -y install qemu-system"
ssh ubuntu@plana303.shangdehao.com "sudo apt-get -y install qemu-system"
ssh ubuntu@plana304.shangdehao.com "sudo apt-get -y install qemu-system"
ssh ubuntu@plana305.shangdehao.com "sudo apt-get -y install qemu-system"
ssh ubuntu@plana306.shangdehao.com "sudo apt-get -y install qemu-system"
ssh ubuntu@plana307.shangdehao.com "sudo apt-get -y install qemu-system"
ssh ubuntu@plana308.shangdehao.com "sudo apt-get -y install qemu-system"

printf "\n\n =====>>>>> try to install  qemu packages\n"
ssh ubuntu@plana300.shangdehao.com "sudo apt-get -y install libguestfs-tools"
ssh ubuntu@plana301.shangdehao.com "sudo apt-get -y install libguestfs-tools"
ssh ubuntu@plana302.shangdehao.com "sudo apt-get -y install libguestfs-tools"
ssh ubuntu@plana303.shangdehao.com "sudo apt-get -y install libguestfs-tools"
ssh ubuntu@plana304.shangdehao.com "sudo apt-get -y install libguestfs-tools"
ssh ubuntu@plana305.shangdehao.com "sudo apt-get -y install libguestfs-tools"
ssh ubuntu@plana306.shangdehao.com "sudo apt-get -y install libguestfs-tools"
ssh ubuntu@plana307.shangdehao.com "sudo apt-get -y install libguestfs-tools"
ssh ubuntu@plana308.shangdehao.com "sudo apt-get -y install libguestfs-tools"

printf "\n\n =====>>>>> check kvm_intel....\n"
printf "\n ==>>  plana300\n"
ssh ubuntu@plana300.shangdehao.com "sudo lsmod | grep kvm; sudo kvm-ok; cat /sys/module/kvm_intel/parameters/nested; grep -r kvm /etc/group"
printf "\n ==>>  plana301\n"
ssh ubuntu@plana301.shangdehao.com "sudo lsmod | grep kvm; sudo kvm-ok; cat /sys/module/kvm_intel/parameters/nested; grep -r kvm /etc/group"
printf "\n ==>>  plana302\n" 
ssh ubuntu@plana302.shangdehao.com "sudo lsmod | grep kvm; sudo kvm-ok; cat /sys/module/kvm_intel/parameters/nested; grep -r kvm /etc/group" 
printf "\n ==>>  plana303\n" 
ssh ubuntu@plana303.shangdehao.com "sudo lsmod | grep kvm; sudo kvm-ok; cat /sys/module/kvm_intel/parameters/nested; grep -r kvm /etc/group"
printf "\n ==>>  plana304\n"
ssh ubuntu@plana304.shangdehao.com "sudo lsmod | grep kvm; sudo kvm-ok; cat /sys/module/kvm_intel/parameters/nested; grep -r kvm /etc/group"
printf "\n ==>>  plana305\n"
ssh ubuntu@plana305.shangdehao.com "sudo lsmod | grep kvm; sudo kvm-ok; cat /sys/module/kvm_intel/parameters/nested; grep -r kvm /etc/group"
printf "\n ==>>  plana306\n"
ssh ubuntu@plana306.shangdehao.com "sudo lsmod | grep kvm; sudo kvm-ok; cat /sys/module/kvm_intel/parameters/nested; grep -r kvm /etc/group"
printf "\n ==>>  plana307\n"
ssh ubuntu@plana307.shangdehao.com "sudo lsmod | grep kvm; sudo kvm-ok; cat /sys/module/kvm_intel/parameters/nested; grep -r kvm /etc/group"
printf "\n ==>>  plana308\n"
ssh ubuntu@plana308.shangdehao.com "sudo lsmod | grep kvm; sudo kvm-ok; cat /sys/module/kvm_intel/parameters/nested; grep -r kvm /etc/group"

printf "\n\n =====>>>> check mount point\n"
printf " ==>>  plana300\n"
ssh ubuntu@plana300.shangdehao.com "findmnt | grep export; sudo umount /export/client.0"
printf " ==>>  plana301\n"
ssh ubuntu@plana301.shangdehao.com "findmnt | grep export; sudo umount /export/client.0"
printf " ==>>  plana302\n"
ssh ubuntu@plana302.shangdehao.com "findmnt | grep export; sudo umount /export/client.0"
printf " ==>>  plana303\n"
ssh ubuntu@plana303.shangdehao.com "findmnt | grep export; sudo umount /export/client.0"
printf " ==>>  plana304\n"
ssh ubuntu@plana304.shangdehao.com "findmnt | grep export; sudo umount /export/client.0"
printf " ==>>  plana305\n"
ssh ubuntu@plana305.shangdehao.com "findmnt | grep export; sudo umount /export/client.0"
printf " ==>>  plana306\n"
ssh ubuntu@plana306.shangdehao.com "findmnt | grep export; sudo umount /export/client.0"
printf " ==>>  plana307\n"
ssh ubuntu@plana307.shangdehao.com "findmnt | grep export; sudo umount /export/client.0"
printf " ==>>  plana308\n"
ssh ubuntu@plana308.shangdehao.com "findmnt | grep export; sudo umount /export/client.0"

printf "\n\n =====>>>> unlock machine from resource pool...\n"
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana300
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana301
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana302
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana303
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana304
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana305
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana306
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana307
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana308
teuthology-lock --unlock --owner scheduled_teuthworker@sdh1-S2600JF plana309


