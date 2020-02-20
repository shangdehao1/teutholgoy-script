#!/bin/bash
teuthology-schedule --name shangdehao_test_singe_job --num 1 --worker plana --priority 1000 -v --description "/home/teuthworker/my-test-case/cluster.yaml"  \
                    -- /tmp/schedule_suite_2sYttq \
		       /home/teuthworker/my-test-case/cluster.yaml \
                       /home/teuthworker/src/github.com_ceph_ceph_master/qa/suites/rbd/basic/base/install.yaml \
                       /home/teuthworker/src/github.com_ceph_ceph_master/qa/suites/rbd/basic/cachepool/small.yaml \
                       /home/teuthworker/src/github.com_ceph_ceph_master/qa/suites/rbd/basic/clusters/fixed-1.yaml \
                       /home/teuthworker/src/github.com_ceph_ceph_master/qa/suites/rbd/basic/clusters/openstack.yaml \
                       /home/teuthworker/src/github.com_ceph_ceph_master/qa/suites/rbd/basic/msgr-failures/few.yaml \
                       /home/teuthworker/src/github.com_ceph_ceph_master/qa/suites/rbd/basic/objectstore/bluestore-low-osd-mem-target.yaml \
                       /home/teuthworker/src/github.com_ceph_ceph_master/qa/suites/rbd/basic/supported-random-distro$/ubuntu_latest.yaml \
                       /home/teuthworker/src/github.com_ceph_ceph_master/qa/suites/rbd/basic/tasks/rbd_python_api_tests_old_format.yaml \

