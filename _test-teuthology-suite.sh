#!/bin/bash

teuthology-suite --dry-run -vv  \
		 --machine-type plana \
		 --teuthology-branch master \
		 \
		 --suite-rep https://github.com/ceph/ceph.git \
	         --suite-branch master \
		 --suite-dir /home/teuthworker/src/github.com_ceph_ceph_master \
		 --suite-relpath qa \
		 --suite rbd/basic \
		\
                 --ceph-repo https://github.com/ceph/ceph.git \
		 --ceph master \
		 --sha1 4cf31062d1a0e08247f19ce6110b9cc2f09e95b1 \
		\
		 --kernel distro \
		 --flavor basic \
		\
		 --distro ubuntu \
		 --distro-version 18.04 \
		\
		\
		\
		 --owner suite_testing_by_dehao  \
		\
		--filter ubuntu \
		 \
                 /home/teuthworker/my-test-case/rbd_fio.yaml
		
		

#--suite-repo https://github.com/ceph/ceph.git 
#--suite-branch master 
